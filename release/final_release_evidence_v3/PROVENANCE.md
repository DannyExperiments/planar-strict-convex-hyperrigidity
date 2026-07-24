# Provenance

## Path convention

Unless a path is explicitly labeled bundle-local, every path in this file is
relative to the repository root. The corrective evidence bundle mirrors these
repository paths from its own top-level directory. The enclosing repository
path `release/` is not recursively embedded inside the ZIP.

## Canonical proof artifacts

| Artifact | Role | SHA-256 |
|---|---|---|
| `source/Artifact_A_square_polytope.md` | Corrected square and polygon proof | `c43e287a90242e3f5948c34328adf54e9c4b60630dfe6a3ab5eff1f54a495b69` |
| `source/Artifact_B_planar_compact_convex.md` | Arbitrary compact-convex planar extension | `a0ebb8e7897760d789de3fe9b1d31611aaef310f88d41ffabb073da6d85c4728` |

The files above were copied byte-for-byte from the preserved conversation
attachments.  They must not be edited.

## Audit record

| Audit | Scope | SHA-256 |
|---|---|---|
| `audits/Artifact_A_hostile_audit_1.md` | Square/polytope proof | `2ec2fab13eecad09242fae6013e4e85892a116f6ef88df774393e8870aaa11c4` |
| `audits/Artifact_A_hostile_audit_2.md` | Square/polytope proof | `c94939043d9fcee4c7eaa0c50e3154ad7cc59357a5d1fb665e28d5f6c8efd59d` |
| `audits/Artifact_B_hostile_audit_1.md` | Planar extension and dependency audit | `a75868954291282452030735d7c30fd687a45b22b95df8bd8375833b294e39c6` |
| `audits/Artifact_B_hostile_audit_2.md` | Fresh planar extension audit | `67f5c4b32a27c4030ccb3f325cf67bc64e52ca8942fdbcef7da565dfb4e1c24c` |
| `audits/final_hostile_referee_report.md` | Final manuscript-level hostile audit; attachment wrapper preserved verbatim | `c4c9dd5befe18e0be89eda8e8a389986d07a49e3ee910554e0577bdadd48ff07` |
| `audits/repaired_manuscript_hostile_audit.md` | Repaired-manuscript hostile audit; all fourteen numbered theorem, lemma, and corollary statements passed | `52cbcb253c3b33089f2c8285c95f29c3545749d8ce094f9522669728b8b15822` |
| `audits/final_release_hostile_referee_report.md` | Final release audit; mathematics and literature passed, overall documentary verdict repairable | `bafaac66653c744d0224abbec71fd0f40880f016951b9e465e622fb2a85ad5f4` |
| `audits/final_documentary_reaudit_report.md` | Self-contained-bundle re-audit; Items 1 and 3--6 passed, Item 2 failed on two stale disclosure phrases | `275f3b8a01a16ca3981aee678c7b9277f18a94eb4eb7cced63c2541deb5fd4d5` |
| `audits/definitive_release_signoff_report.md` | Definitive release-signoff audit; mathematics, literature, and public scope passed; bundle paths and Lean corollary scope failed | `f24aa51b47eb757eadb7b9d76c2a54e6e9f236d5b0569415e7d884722521a4a9` |
| `audits/corrective_release_signoff_audit_8.md` | v2 corrective signoff; substantive categories passed; root verifier and Lean scan coordinates failed | `95f45780f5bcfd34103385f306495f73117fb2b5b2e7767221ec494bec484dc2` |
| `audits/corrective_release_signoff_audit_9.md` | Separately run v2 corrective signoff; substantive categories passed; root verifier and one provenance path failed | `9ed0b6916a771a575d873ddb8b02ca7639318e2c580ff320b15c0788a67f2f01` |

All eleven reports are AI-generated audits, not human referee reports.

## First final release audit inputs

| Input | Role | SHA-256 |
|---|---|---|
| `audits/FINAL_RELEASE_AUDIT_PACKET.md` | Frozen evidence companion for the final fresh audit | `ffb4b46f26e2a147455eac7ea16b550ba356899979887e6b30d4d723aa0ca4d6` |
| `audits/FINAL_RELEASE_AUDIT_PROMPT.txt` | Copy-paste final hostile-referee prompt | `65dc7a96806974a1cdcd2805044d8f16cb9de753018b126ab4b25a0e133f6419` |

These inputs produced the first final release report above. The TeX then
received only its requested documentary wording repairs. Earlier evidence
packets were insufficiently self-contained because they supplied hashes
without every referenced byte sequence or relocated repository paths. The
corrective bundle under repository path `release/` mirrors
repository-relative paths, includes every file in
`SOURCE_MANIFEST.sha256`, and verifies from its own extracted top-level
directory.

## Aristotle record

| Artifact | Role | SHA-256 |
|---|---|---|
| `formalization/6f13344c-d5b5-4805-ab3d-e779ff868afb-aristotle.tar.gz` | Exact returned Aristotle project archive | `1887d86be11c597cfcbc604346b3efb55260cb3bbecbf69720443c5210b6bc1f` |

The Aristotle return contains sorry-free POVM/PVM foundations but leaves
`thm_main`, `cor_tuple`, and `cor_square` as explicit `sorry` declarations.
`thm_main` matches the manuscript theorem. `cor_tuple` and `cor_square` are
stronger ambient-space surrogates, not exact formulations of the manuscript
corollaries on `ran P`; see
`formalization/ARISTOTLE_SCOPE_CORRECTION.md`. The return is not a formal
verification of the manuscript theorem or either operator corollary.

## Superseded final-audit input build

The TeX revision submitted to the final release audit was compiled by GitHub
Actions workflow run
`30062596744` from private remote commit
`4b2822bc33cfdea9a7408174d0be0e1b0c101d2e`.

| Build artifact | Identifier or SHA-256 |
|---|---|
| Audited TeX SHA-256 | `e5a8c072a8fc48b4c1df36e078e3395547677910442b42a48bfdb433e95123e9` |
| GitHub Actions artifact ID | `8585105883` |
| Artifact ZIP SHA-256 | `058b91a5123366630a5442c4fd653ef796f31bae4f388808fdfd15c6072b8c88` |
| Compiled PDF SHA-256 | `465709ab87602367fde8bc95c2a829d8d7d19f110a14ffffa0240f17749ec54f` |

That PDF has eight A4 pages. All eight pages were rendered and visually
inspected on 2026-07-24. No clipping, overlap, broken-glyph, unresolved-
reference, or bibliography-layout defect was observed. The inspected local
copy has now been superseded by the post-audit wording revision; generated
outputs remain untracked.

## Current corrective release build

The current TeX was compiled by GitHub Actions workflow run `30073118197`
from private remote commit
`7586a3b28e7b4ebaeca2d1b26c2a63b956fd4a5b`.

| Build artifact | Identifier or SHA-256 |
|---|---|
| Current TeX SHA-256 | `1902dc564a0a2fc09cd6a04fa6d56943deae15453b79d9841a3998b462426014` |
| GitHub Actions job ID | `89417964849` |
| GitHub Actions artifact ID | `8588800742` |
| Artifact ZIP SHA-256 | `28c695943def70a219cb01c323025136e0a9ed9ac50366c93e198056e2a5dc12` |
| Compiled PDF SHA-256 | `27ffab5e1a5d3ab99f2bbe4f5b44d6c62b4d7d79aa8860627e1a73f5e2edadb1` |
| Exact CI job-log SHA-256 | `a9c800882b45b66e3d384136718162024896dbf8d786b5bf275ef63ba460a238` |

That PDF has eight A4 pages and was produced by pdfTeX 1.40.29. All eight
pages were rendered and visually inspected on 2026-07-24; no clipping,
overlap, broken glyph, unresolved-reference, or bibliography-layout defect
was observed. The exact log, artifact ZIP, extracted PDF, workflow, current
release-verification scripts, and build record are included in the
self-contained release bundle. The root-verifier and metadata-regression
repairs postdate that CI run; the paper TeX and compiled PDF did not change.

## Superseded pre-audit-repair paper build record

The preceding TeX revision was compiled by GitHub Actions workflow run
`30060796309` from remote commit
`88d5d25650b658fa592d44bcd354cdaf32940964`.

| Build artifact | Identifier or SHA-256 |
|---|---|
| GitHub Actions artifact ID | `8584479061` |
| Artifact ZIP SHA-256 | `71ce3879474bb737ea93b98d33e6e4bda01224533879b5caf2659cfa733b761f` |
| Compiled PDF SHA-256 | `300f4189f08c36e9eaebeb6c74e6dcab513f6fff1b79861fbeeb45ecc8658e02` |

This build predates the final disclosure, citation, and release-wording
repairs requested by `audits/repaired_manuscript_hostile_audit.md`; it is
retained only as provenance and is not the current release candidate.

That superseded PDF also has eight A4 pages. It is not the local release
candidate and is retained only through the hashes above.

## Final literature record

| Report | Role | SHA-256 |
|---|---|---|
| `literature/final_deep_research_report.md` | Solution-aware prior-art search | `16d085483ded93534c4598ba3b81336433b808c1a8ccbc3e29655a9c183a094e` |
| `literature/final_pro_literature_report.md` | Separately run Pro prior-art search | `362aceeae65269e0423ae136a1dbc0b0929a1e7432434c18d7f56c8747e86025` |

Both reports distinguish the previously known affine-dimension-at-most-one
case from the full affine-dimension-two theorem. Neither located a prior
theorem covering arbitrary continuous strictly convex \(g\) on arbitrary
planar compact convex \(K\) with diffuse representations.

## Chronology

1. Artifact A repaired the exact two-variable square proof and established
   the polytope extension in affine dimension at most two.
2. Separately run hostile audits passed the frozen Artifact A.
3. Artifact B added the measurable extreme-boundary replacement needed for
   arbitrary planar compact convex sets.
4. Two separately run hostile audits passed Artifact B.
5. A separate affine-dimension-three branch was developed and remains in a
   different repository.
6. Two final solution-aware literature searches found no prior full planar
   theorem, while identifying the one-dimensional case as previously known.
7. A final manuscript-level hostile audit passed the main theorem and
   identified two local edge cases, repaired in the current paper.
8. Aristotle returned a compiling feasibility project with a sorry-free
   foundational layer and three unproved headline declarations.
9. A fresh hostile audit of the repaired manuscript passed all fourteen
   numbered theorem, lemma, and corollary statements and requested only
   documentary, citation, and private-release wording repairs.
10. The fresh report was preserved verbatim and its valid release repairs
    were incorporated without altering a theorem, lemma, corollary, or
    numbered remark.
11. A final release audit passed all numbered theorem, lemma, and corollary
    statements and the literature/scope language, but returned
    `OVERALL REPAIRABLE` because the two-file submission was not a
    self-contained evidence bundle and because three documentary phrases
    required tightening.
12. The final release report was preserved verbatim, and its documentary
    wording repairs were applied without changing mathematics.
13. A fresh CI build succeeded, all eight revised PDF pages passed visual
    inspection, and a self-contained release-evidence bundle was sealed for
    one narrow documentary re-audit.
14. That re-audit passed bundle integrity, the documentary-only TeX diff, the
    build chain, the Aristotle boundary, and public-claim scope. It failed
    only because `AI_DISCLOSURE.md` retained “independent” and “numbered
    mathematical results”; both phrases were corrected exactly and verified
    mechanically without changing the TeX or mathematics.
15. The corrected bundle was frozen for a definitive full release-signoff
    audit. That audit independently passed the mathematics, literature, and
    public-claim categories, but found that the ZIP had relocated paths and
    omitted both preliminary searches, and that two Aristotle declarations
    had been described too broadly.
16. The report was preserved verbatim. The v2 bundle now mirrors repository
    paths, contains all manifest-listed evidence, and verifies itself from its
    extracted root. Formalization metadata now states that `thm_main` matches
    the manuscript while `cor_tuple` and `cor_square` are stronger
    ambient-space surrogates; all three still contain `sorry`.
17. GitHub Actions workflow run `30073118197` passed on the corrective
    revision, and all eight pages of its exact artifact PDF passed visual
    inspection.
18. Two separately run audits of v2 again passed mathematics,
    literature/scope, the formalization boundary, and public-claim scope.
    They found a broken no-argument root verifier, six stale Lean line
    coordinates, and one unresolved provenance path. All three defects were
    repaired in v3 and protected by regression checks.
19. The v3 packet is the sole current signoff candidate.
20. Specialist human review and absolute historical-priority review remain
    pending.

## Attribution boundary

The mathematical drafts were generated and repaired with GPT-5.6 Pro under
human direction.  Codex organized the audit trail, verified hashes, repaired
the audited manuscript, and prepared the repository and paper.
DannyExperiments is the conventional manuscript author and human curator;
the model contributions are disclosed explicitly in the paper and
`AI_DISCLOSURE.md`.
