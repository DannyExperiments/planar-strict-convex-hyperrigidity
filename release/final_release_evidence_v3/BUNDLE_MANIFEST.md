# Self-contained corrective release evidence bundle

This bundle is rooted at `final_release_evidence_v3/`. Except for
bundle-specific files named below, paths mirror their repository-relative
locations exactly. In particular, the canonical artifacts are under
`source/`, all audit inputs and reports are under `audits/`, and all four
literature reports are under `literature/`.

The bundle is an evidence and reproducibility package, not human peer review
and not a Lean proof of any headline theorem.

## Contents

- `paper/`: the current manuscript TeX.
- `source/`: the two frozen ordinary-proof artifacts.
- `audits/`: preserved audit inputs and reports, including the definitive
  and two v2 corrective signoff failures that motivated the current
  corrections.
- `literature/`: both preliminary and both final solution-aware searches.
- `formalization/`: the immutable Aristotle archive, the extracted tree with
  documentary scope corrections, status records, and the exact scope
  correction.
- `declarations/`: the current Lean declaration and scope scan.
- `build/`: the current CI job log, artifact ZIP, extracted PDF, and
  machine-readable and human-readable build records.
- `.github/workflows/` and `scripts/`: the exact workflow and verification
  tooling used by the repository and bundle.
- `README.md`, `AI_DISCLOSURE.md`, `CLAIMS_MATRIX.md`, `PROVENANCE.md`, and
  `PUBLICATION_CHECKLIST.md`: current repository metadata.
- `SOURCE_MANIFEST.sha256`: immutable-source hashes whose paths resolve
  directly from this bundle root.
- `AUDITED_TO_REVISED_TEX.patch`: the complete documentary-only diff from the
  preserved audited TeX to the current TeX.
- `ROOT_SHA256SUMS`: every payload file except itself.
- `VERIFY_BUNDLE.sh`: complete internal verification, including exact file
  coverage, both checksum manifests, TeX counts, Aristotle archive/code
  comparison, formalization-scope disclosure, CI artifact/PDF identity, and
  PDF page/encryption checks when `pdfinfo` is available.

## Verification

From the extracted `final_release_evidence_v3` directory:

```bash
bash VERIFY_BUNDLE.sh
```

The script must finish with:

```text
release-bundle: PASS
```

The original Aristotle archive is unchanged. `thm_main` matches the
manuscript theorem. `cor_tuple` and `cor_square` are explicitly disclosed as
stronger ambient-space surrogates rather than exact `ran P` corollaries. All
three declarations remain `sorry`; no headline Lean verification is claimed.
