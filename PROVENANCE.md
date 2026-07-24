# Provenance

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

All seven reports are AI-generated audits, not human referee reports.

## First final release audit inputs

| Input | Role | SHA-256 |
|---|---|---|
| `audits/FINAL_RELEASE_AUDIT_PACKET.md` | Frozen evidence companion for the final fresh audit | `ffb4b46f26e2a147455eac7ea16b550ba356899979887e6b30d4d723aa0ca4d6` |
| `audits/FINAL_RELEASE_AUDIT_PROMPT.txt` | Copy-paste final hostile-referee prompt | `65dc7a96806974a1cdcd2805044d8f16cb9de753018b126ab4b25a0e133f6419` |

These inputs produced the final release report above. The TeX has since
received only the three documentary wording repairs specified in that report.
The evidence packet was insufficiently self-contained because it supplied
hashes without every referenced byte sequence. A complete bundle is preserved
under `release/`.

## Aristotle record

| Artifact | Role | SHA-256 |
|---|---|---|
| `formalization/6f13344c-d5b5-4805-ab3d-e779ff868afb-aristotle.tar.gz` | Exact returned Aristotle project archive | `1887d86be11c597cfcbc604346b3efb55260cb3bbecbf69720443c5210b6bc1f` |

The Aristotle return contains sorry-free POVM/PVM foundations but leaves
`thm_main`, `cor_tuple`, and `cor_square` as explicit `sorry` declarations.
It is not a formal verification of the manuscript theorem.

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

## Current post-final-audit documentary-repair build

The current TeX was compiled by GitHub Actions workflow run `30065631243`
from private remote commit
`2e212e1c98dbf90abad7583d81c2eebb0b1f2f55`.

| Build artifact | Identifier or SHA-256 |
|---|---|
| Corrected TeX SHA-256 | `aab42ddd199eb8553bd74217c343eb54d4e88a669dae2e41964e80373269aba4` |
| GitHub Actions job ID | `89395902734` |
| GitHub Actions artifact ID | `8586166421` |
| Artifact ZIP SHA-256 | `b824c6054d8cdc68216982ca84168b5556d957f3f13e2d772442974ccc4235fd` |
| Compiled PDF SHA-256 | `8370971e72692ae4f61342df1a6198e294eaeb5c641ea3be96f226c8ab3ece87` |
| Exact CI job-log SHA-256 | `94ed1de7742f4d0c4e375d669b1a7efab44622368b69d2f7998bddf2c9f06553` |

That PDF has eight A4 pages and was produced by pdfTeX 1.40.29. All eight
pages were rendered and visually inspected on 2026-07-24; no clipping,
overlap, broken glyph, unresolved-reference, or bibliography-layout defect
was observed. The exact log, artifact ZIP, extracted PDF, workflow, scripts,
and build record are included in the self-contained release bundle.

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
repairs requested by `repaired_manuscript_hostile_audit.md`; it is retained
only as provenance and is not the current release candidate.

That superseded PDF also has eight A4 pages. It is not the local release
candidate and is retained only through the hashes above.

## Final literature record

| Report | Role | SHA-256 |
|---|---|---|
| `literature/final_deep_research_report.md` | Solution-aware prior-art search | `16d085483ded93534c4598ba3b81336433b808c1a8ccbc3e29655a9c183a094e` |
| `literature/final_pro_literature_report.md` | Independent Pro prior-art search | `362aceeae65269e0423ae136a1dbc0b0929a1e7432434c18d7f56c8747e86025` |

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
   numbered mathematical results and requested only documentary, citation,
   and private-release wording repairs.
10. The fresh report was preserved verbatim and its valid release repairs
    were incorporated without altering a numbered mathematical result.
11. A final release audit passed all numbered mathematical results and the
    literature/scope language, but returned `OVERALL REPAIRABLE` because the
    two-file submission was not a self-contained evidence bundle and because
    three documentary phrases required tightening.
12. The final release report was preserved verbatim, and its documentary
    wording repairs were applied without changing mathematics.
13. A fresh CI build succeeded, all eight revised PDF pages passed visual
    inspection, and a self-contained release-evidence bundle was sealed for
    one narrow documentary re-audit.
14. Specialist human review and absolute historical-priority review remain
    pending.

## Attribution boundary

The mathematical drafts were generated and repaired with GPT-5.6 Pro under
human direction.  Codex organized the audit trail, verified hashes, repaired
the audited manuscript, and prepared the repository and paper.
DannyExperiments is the conventional manuscript author and human curator;
the model contributions are disclosed explicitly in the paper and
`AI_DISCLOSURE.md`.
