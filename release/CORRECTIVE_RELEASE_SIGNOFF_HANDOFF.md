# Final corrective release-signoff v4 handoff

Attach exactly these two evidence files to one fresh GPT-5.6 Pro conversation:

1. `paper/planar_strict_convex_hyperrigidity.tex`
2. `release/planar-strict-convex-hyperrigidity-final-evidence-v4.zip`

Then paste the complete contents of:

`audits/FINAL_CORRECTIVE_SIGNOFF_V4_PROMPT.txt`

The prompt is an instruction, not a third evidence attachment. Do not attach a
standalone PDF, a v1/v2/v3 ZIP, an earlier audit report, or an earlier prompt
separately. The historical materials, including audit #10, are already inside
the v4 ZIP.

## Attachment identities

```text
1902dc564a0a2fc09cd6a04fa6d56943deae15453b79d9841a3998b462426014  paper/planar_strict_convex_hyperrigidity.tex
473c8331c57a20431aade7cb54d0048b9bc7db4f7c3cda18a52edef3e471db66  release/planar-strict-convex-hyperrigidity-final-evidence-v4.zip
c8ac9db2483e5f088a8f2913486b884d417e91f1b15e525343b543233d973c61  audits/FINAL_CORRECTIVE_SIGNOFF_V4_PROMPT.txt
```

ZIP size: 912,152 bytes. Root checksum entries: 77. Immutable-source
manifest entries: 22.

## Reproduced audit command

From the extracted `final_release_evidence_v4` directory:

```bash
bash VERIFY_BUNDLE.sh
```

Observed result:

```text
release-bundle: PASS
exit=0
```

## Build evidence frozen inside the ZIP

```text
private remote commit  7586a3b28e7b4ebaeca2d1b26c2a63b956fd4a5b
workflow run           30073118197
workflow job           89417964849
artifact ID            8588800742
artifact ZIP SHA-256   28c695943def70a219cb01c323025136e0a9ed9ac50366c93e198056e2a5dc12
compiled PDF SHA-256   27ffab5e1a5d3ab99f2bbe4f5b44d6c62b4d7d79aa8860627e1a73f5e2edadb1
CI job log SHA-256     a9c800882b45b66e3d384136718162024896dbf8d786b5bf275ef63ba460a238
```

The TeX remains byte-for-byte unchanged. The v4 changes are documentary and
release-engineering repairs only: they correct four stale descriptions of the
Scherer theorem's publication status, preserve audit #10, record publisher
metadata, and add a regression check. GitHub Actions concluded `success`. The
artifact contains one eight-page, unencrypted A4 PDF produced by pdfTeX
1.40.29. The artifact and bundled PDFs are byte-identical, and all pages were
inspected.

## Expected audit boundary

An honest `OVERALL PASS` means the ordinary proof and v4 evidence package pass
the requested AI release audit within the limitations stated in the packet.
It does not mean human peer review, completed Lean formalization, or absolute
historical priority.
