# Final release evidence

The immutable evidence archive that passed final corrective release signoff
is:

`planar-strict-convex-hyperrigidity-final-evidence-v4.zip`

SHA-256:

```text
473c8331c57a20431aade7cb54d0048b9bc7db4f7c3cda18a52edef3e471db66
```

Size: 912,152 bytes.

The archive contains the unchanged current TeX; both frozen source artifacts;
every manifest-listed audit, including audit #10; both preliminary and both
final literature reports; the current publisher-record check for Scherer's
theorem; the immutable Aristotle archive and its documentary-corrected
extracted tree; the exact successful CI log; the CI artifact ZIP and
byte-identical extracted eight-page PDF; the workflow and verification
scripts; the complete documentary-only TeX diff; and a root checksum manifest
covering all 77 payload files.

Archive integrity was tested with `unzip -t`. From the extracted
`final_release_evidence_v4` directory, run exactly:

```bash
bash VERIFY_BUNDLE.sh
```

Observed result:

```text
release-bundle: PASS
exit=0
```

The verifier distinguishes its repository `scripts/` location from its copied
bundle-root location. The builder performs a fresh extraction and runs the
exact no-argument command before completing. Separate regression checks derive
the current Lean declaration coordinates, reject unresolved
repository-document paths in `PROVENANCE.md`, and reject recurrence of the
four stale Scherer publication-status descriptions in the current extracted
tree.

The failed v1 and v2 archives are retained only under `release/superseded/`.
The failed v3 candidate is preserved as historical evidence and is not a
current audit attachment.

The v4 package documents an ordinary AI-generated and AI-audited mathematical
proof. It does not claim human peer review, Lean verification of a headline
theorem, absolute historical priority, or an unrestricted
affine-dimension-three result.

The post-signoff report is preserved outside the archive at
`audits/final_corrective_release_signoff_v4_pass.md`, SHA-256
`6493294455f3a7b2aba169475e85e6d9114f1ec84bfad74c1d5a166c1761f522`.
It records six category passes and the final verdict `OVERALL PASS`. The v4
archive was deliberately not rebuilt after signoff.
