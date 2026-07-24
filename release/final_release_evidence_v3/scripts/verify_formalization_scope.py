#!/usr/bin/env python3
"""Verify the disclosed scope and provenance of the Aristotle extraction."""

from __future__ import annotations

import re
import sys
import tarfile
from pathlib import Path


def fail(message: str) -> None:
    print(f"formalization-scope: FAIL: {message}", file=sys.stderr)
    raise SystemExit(1)


def strip_lean_comments(text: str) -> str:
    """Remove nested Lean comments and normalize non-comment whitespace."""

    output: list[str] = []
    index = 0
    block_depth = 0
    in_string = False
    escaped = False

    while index < len(text):
        pair = text[index : index + 2]

        if block_depth:
            if pair == "/-":
                block_depth += 1
                index += 2
            elif pair == "-/":
                block_depth -= 1
                index += 2
            else:
                index += 1
            continue

        if in_string:
            output.append(text[index])
            if escaped:
                escaped = False
            elif text[index] == "\\":
                escaped = True
            elif text[index] == '"':
                in_string = False
            index += 1
            continue

        if pair == "/-":
            block_depth = 1
            index += 2
        elif pair == "--":
            newline = text.find("\n", index + 2)
            index = len(text) if newline < 0 else newline + 1
            output.append(" ")
        else:
            if text[index] == '"':
                in_string = True
            output.append(text[index])
            index += 1

    if block_depth:
        fail("unterminated Lean block comment")
    if in_string:
        fail("unterminated Lean string")
    return re.sub(r"\s+", " ", "".join(output)).strip()


root = (
    Path(sys.argv[1]).resolve()
    if len(sys.argv) == 2
    else Path(__file__).resolve().parents[1]
)
archive = (
    root
    / "formalization"
    / "6f13344c-d5b5-4805-ab3d-e779ff868afb-aristotle.tar.gz"
)
current = root / "formalization" / "aristotle_return_v1"

if not archive.is_file():
    fail(f"missing original archive: {archive}")
if not current.is_dir():
    fail(f"missing extracted tree: {current}")

with tarfile.open(archive, "r:gz") as handle:
    members = [member for member in handle.getmembers() if member.isfile()]
    prefixes = {member.name.split("/", 1)[0] for member in members}
    if len(prefixes) != 1:
        fail("archive does not have exactly one top-level directory")
    prefix = prefixes.pop()

    def archived_bytes(relative: str) -> bytes:
        member = handle.getmember(f"{prefix}/{relative}")
        extracted = handle.extractfile(member)
        if extracted is None:
            fail(f"could not read archived file: {relative}")
        return extracted.read()

    exact_files = [
        "README.md",
        "lake-manifest.json",
        "lakefile.toml",
        "lean-toolchain",
        "RequestProject/.gitkeep",
        "RequestProject/Main.lean",
        "RequestProject/POVM.lean",
    ]
    for relative in exact_files:
        current_bytes = (current / relative).read_bytes()
        if current_bytes != archived_bytes(relative):
            fail(f"non-documentary archive drift in {relative}")

    original_statements = archived_bytes("RequestProject/Statements.lean").decode()
    current_statements = (
        current / "RequestProject" / "Statements.lean"
    ).read_text(encoding="utf-8")
    if strip_lean_comments(original_statements) != strip_lean_comments(
        current_statements
    ):
        fail("Lean code in Statements.lean differs from the original archive")

prohibited_current_phrases = {
    current / "RequestProject" / "Statements.lean": [
        "faithfully and at full scope",
        "nothing has been strengthened",
        "stated at full manuscript scope",
    ],
    current / "ARISTOTLE_SUMMARY.md": [
        "faithful full-scope statements",
        "stated at exact scope",
    ],
    current / "GAP_REPORT.md": [
        "faithful, full-scope Lean",
        "Hypotheses were not strengthened",
        "Faithful full-scope statements",
        "exact scope has been pinned down in Lean with faithful statements",
    ],
}
for path, phrases in prohibited_current_phrases.items():
    text = path.read_text(encoding="utf-8")
    for phrase in phrases:
        if phrase.lower() in text.lower():
            fail(f"stale scope claim {phrase!r} in {path.relative_to(root)}")

required_scope_text = [
    root / "formalization" / "ARISTOTLE_SCOPE_CORRECTION.md",
    current / "RequestProject" / "Statements.lean",
    current / "ARISTOTLE_SUMMARY.md",
    current / "GAP_REPORT.md",
]
for path in required_scope_text:
    text = path.read_text(encoding="utf-8").lower()
    if "ambient-space" not in text or "ran p" not in text:
        fail(f"scope correction is incomplete in {path.relative_to(root)}")

statements = current / "RequestProject" / "Statements.lean"
statement_text = statements.read_text(encoding="utf-8")
if len(re.findall(r"(?m)^\s*sorry\s*$", statement_text)) != 3:
    fail("Statements.lean does not contain exactly three standalone sorries")
for declaration in ("thm_main", "cor_tuple", "cor_square"):
    if not re.search(rf"(?m)^theorem\s+{declaration}\b", statement_text):
        fail(f"missing declaration {declaration}")

print(
    "formalization-scope: PASS "
    "(archive preserved; Lean code unchanged; thm_main exact; "
    "operator surrogates disclosed; three sorries)"
)
