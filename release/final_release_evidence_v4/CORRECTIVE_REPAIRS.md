# Corrective repairs after definitive release signoff

The preserved report
`audits/definitive_release_signoff_report.md` passed:

- every mathematical statement and proof in the TeX;
- the literature and scope language;
- release readiness and public-claim scope.

It identified exactly two remaining failure classes. No theorem, hypothesis,
equation, proof step, corollary, numbered remark, or citation dependency was
changed in response.

## 1. Bundle self-containment and paths

The corrective bundle:

- mirrors repository paths instead of relocating `source/` to `sources/` or
  audit inputs to `audit_inputs/`;
- includes `literature/preliminary_search_1.md` and
  `literature/preliminary_search_2.md`;
- makes every entry of `SOURCE_MANIFEST.sha256` resolvable from the extracted
  bundle root;
- states explicitly in `PROVENANCE.md` which paths are repository-relative;
- supplies `ROOT_SHA256SUMS` with exact payload coverage; and
- supplies `VERIFY_BUNDLE.sh`, which independently enumerates the payload,
  verifies both manifests, and checks every previously missing path.

## 2. Lean declaration scope

The original Aristotle archive remains byte-for-byte unchanged. The extracted
tree received documentary corrections only; a verifier compares the
comment-stripped Lean code against the archive and rejects any code change.

Current documentation now states:

- `thm_main` matches the manuscript's main theorem;
- `cor_tuple` and `cor_square` place the compressed tuple and its unital
  calculus on the full ambient Hilbert space;
- those two declarations are stronger ambient-space surrogates, not exact
  formulations of the manuscript corollaries on `ran P`; and
- all three declarations remain `sorry`, so no headline result is
  Lean-verified.

The exact comparison appears in
`formalization/ARISTOTLE_SCOPE_CORRECTION.md`.

## 3. Root verifier entrypoint

The two separately run v2 audits reproduced that
`bash VERIFY_BUNDLE.sh` selected the parent of the extracted bundle and exited
silently with status 1. The verifier now detects whether it is running under
`scripts/` or at the extracted bundle root. The bundle builder performs a
fresh extraction and executes the exact no-argument command before it can
finish successfully.

## 4. Exact documentary coordinates and paths

The v2 audits found six stale line coordinates in
`declarations/LEAN_DECLARATION_SCAN.md` and one missing `audits/` prefix in
`PROVENANCE.md`. Both are corrected. `scripts/verify_release_claims.py` now
derives the declaration and `sorry` coordinates from the current Lean source
and rejects any mismatch, and it rejects every unresolved backticked
repository-document path in `PROVENANCE.md`.

## 5. Scherer publication-status consistency

The v3 final-corrective audit passed mathematics, provenance, reproducibility,
the formalization boundary, and public-claim scope. Its sole failure was that
three current files in the documentary-corrected Aristotle tree contained
four unqualified descriptions of Scherer's planar theorem as “unpublished.”

Elsevier's article API confirms a *Journal of Functional Analysis* publication
record: volume 291, issue 10, article 111602, DOI
10.1016/j.jfa.2026.111602, with assigned cover date 15 November 2026. The
current extracted-tree comments and reports now distinguish the cited 2024
arXiv version from that publication record.

The immutable Aristotle archive and comment-stripped Lean code remain
unchanged. `scripts/verify_release_claims.py` now rejects the four stale
publication-status patterns in the three current files and requires the DOI
in each.
