#!/usr/bin/env python3
"""Check exact release claims that previously drifted across audit cycles."""

from __future__ import annotations

import re
import sys
from pathlib import Path


def fail(message: str) -> None:
    print(f"release-claims: FAIL: {message}", file=sys.stderr)
    raise SystemExit(1)


root = (
    Path(sys.argv[1]).resolve()
    if len(sys.argv) == 2
    else Path(__file__).resolve().parents[1]
)

required = [
    "source/Artifact_A_square_polytope.md",
    "source/Artifact_B_planar_compact_convex.md",
    "literature/preliminary_search_1.md",
    "literature/preliminary_search_2.md",
    "literature/final_deep_research_report.md",
    "literature/final_pro_literature_report.md",
    "audits/definitive_release_signoff_report.md",
    "formalization/6f13344c-d5b5-4805-ab3d-e779ff868afb-aristotle.tar.gz",
    "formalization/ARISTOTLE_SCOPE_CORRECTION.md",
    "formalization/aristotle_return_v1/RequestProject/Statements.lean",
    "declarations/LEAN_DECLARATION_SCAN.md",
    "paper/planar_strict_convex_hyperrigidity.tex",
    "SOURCE_MANIFEST.sha256",
]
for relative in required:
    if not (root / relative).is_file():
        fail(f"required release evidence is missing: {relative}")

manifest_paths: list[str] = []
for line in (root / "SOURCE_MANIFEST.sha256").read_text(encoding="utf-8").splitlines():
    match = re.fullmatch(r"[0-9a-f]{64}  (.+)", line)
    if not match:
        fail(f"malformed SOURCE_MANIFEST line: {line!r}")
    relative = match.group(1)
    manifest_paths.append(relative)
    if not (root / relative).is_file():
        fail(f"SOURCE_MANIFEST path is unresolved: {relative}")
if len(manifest_paths) != len(set(manifest_paths)):
    fail("SOURCE_MANIFEST contains duplicate paths")

tex = (root / "paper" / "planar_strict_convex_hyperrigidity.tex").read_text(
    encoding="utf-8"
)
expected_counts = {
    "theorem": 2,
    "lemma": 9,
    "corollary": 3,
    "remark": 1,
}
for environment, expected in expected_counts.items():
    actual = len(re.findall(rf"\\begin\{{{environment}\}}", tex))
    if actual != expected:
        fail(
            f"expected {expected} {environment} environments in TeX; found {actual}"
        )

scope_documents = [
    "README.md",
    "AI_DISCLOSURE.md",
    "CLAIMS_MATRIX.md",
    "PROVENANCE.md",
    "PUBLICATION_CHECKLIST.md",
    "formalization/ARISTOTLE_RETURN_STATUS.md",
    "formalization/ARISTOTLE_SUBMISSION_RECEIPT.md",
    "formalization/LEAN_FEASIBILITY.md",
    "formalization/ARISTOTLE_SCOPE_CORRECTION.md",
    "formalization/aristotle_return_v1/ARISTOTLE_SUMMARY.md",
    "formalization/aristotle_return_v1/GAP_REPORT.md",
    "formalization/aristotle_return_v1/RequestProject/Statements.lean",
    "declarations/LEAN_DECLARATION_SCAN.md",
    "paper/planar_strict_convex_hyperrigidity.tex",
]
stale_phrases = [
    "three exact-scope declarations",
    "faithful exact-scope statements",
    "faithful full-scope statements",
    "faithfully and at full scope",
    "nothing has been strengthened",
    "the exact main theorem and operator corollaries are stated",
    "its exact main theorem and two operator corollaries",
]
for relative in scope_documents:
    text = (root / relative).read_text(encoding="utf-8").lower()
    for phrase in stale_phrases:
        if phrase.lower() in text:
            fail(f"stale exact-scope wording {phrase!r} in {relative}")

publication_status_documents = [
    "formalization/aristotle_return_v1/RequestProject/Statements.lean",
    "formalization/aristotle_return_v1/GAP_REPORT.md",
    "formalization/aristotle_return_v1/ARISTOTLE_SUMMARY.md",
]
stale_publication_patterns = [
    r"scherer.{0,200}\bunpublished\b",
    r"\bunpublished\b.{0,200}scherer",
    r"\[external,\s*unpublished\]",
    r"\bunpublished\s+2024\s+arxiv\s+preprint\b",
]
for relative in publication_status_documents:
    text = (root / relative).read_text(encoding="utf-8")
    for pattern in stale_publication_patterns:
        if re.search(pattern, text, flags=re.IGNORECASE | re.DOTALL):
            fail(
                "stale Scherer publication-status wording "
                f"{pattern!r} in {relative}"
            )
    if "10.1016/j.jfa.2026.111602" not in text:
        fail(f"current Scherer publication record is missing from {relative}")

for relative in scope_documents:
    if relative.endswith((".md", ".tex", ".lean")):
        text = (root / relative).read_text(encoding="utf-8")
        if "cor_tuple" in text or "cor\\_tuple" in text:
            if relative not in {
                "PUBLICATION_CHECKLIST.md",
                "formalization/LEAN_FEASIBILITY.md",
            }:
                lower = text.lower()
                if "ambient-space" not in lower and "ambient space" not in lower:
                    fail(f"corollary scope is not disclosed in {relative}")

provenance = (root / "PROVENANCE.md").read_text(encoding="utf-8")
if "every path in this file is\nrelative to the repository root" not in provenance:
    fail("PROVENANCE.md does not declare its path convention")

# Every backticked repository-document path in PROVENANCE.md must resolve
# under the convention declared by that file. This intentionally checks only
# path-like document tokens, not hashes, identifiers, or prose fragments.
for token in re.findall(r"`([^`\n]+)`", provenance):
    if token.endswith((".md", ".tex", ".lean", ".txt", ".json", ".toml", ".yml", ".yaml")):
        if not (root / token).is_file():
            fail(f"unresolved repository-relative provenance path: {token}")

statements_path = (
    root
    / "formalization"
    / "aristotle_return_v1"
    / "RequestProject"
    / "Statements.lean"
)
statement_lines = statements_path.read_text(encoding="utf-8").splitlines()
scan_text = (root / "declarations" / "LEAN_DECLARATION_SCAN.md").read_text(
    encoding="utf-8"
)
for declaration in ("thm_main", "cor_tuple", "cor_square"):
    theorem_line = next(
        (
            index
            for index, line in enumerate(statement_lines, start=1)
            if re.fullmatch(rf"theorem {declaration}", line.strip())
        ),
        None,
    )
    if theorem_line is None:
        fail(f"Lean declaration is missing: {declaration}")
    sorry_line = next(
        (
            index
            for index, line in enumerate(
                statement_lines[theorem_line:], start=theorem_line + 1
            )
            if re.fullmatch(r"\s*sorry\s*", line)
        ),
        None,
    )
    if sorry_line is None:
        fail(f"standalone sorry is missing after Lean declaration: {declaration}")
    if f"{theorem_line}:theorem {declaration}" not in scan_text:
        fail(f"stale theorem coordinate in Lean declaration scan: {declaration}")
    if f"{sorry_line}:  sorry" not in scan_text:
        fail(f"stale sorry coordinate in Lean declaration scan: {declaration}")

if (root / "sources").exists():
    fail("legacy relocated directory 'sources/' is present")
if (root / "audit_inputs").exists():
    fail("legacy relocated directory 'audit_inputs/' is present")

print(
    "release-claims: PASS "
    "(15 numbered items; source paths resolve; preliminary searches present; "
    "Lean scope disclosed)"
)
