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

All five reports are AI-generated audits, not human referee reports.

## Aristotle record

| Artifact | Role | SHA-256 |
|---|---|---|
| `formalization/6f13344c-d5b5-4805-ab3d-e779ff868afb-aristotle.tar.gz` | Exact returned Aristotle project archive | `1887d86be11c597cfcbc604346b3efb55260cb3bbecbf69720443c5210b6bc1f` |

The Aristotle return contains sorry-free POVM/PVM foundations but leaves
`thm_main`, `cor_tuple`, and `cor_square` as explicit `sorry` declarations.
It is not a formal verification of the manuscript theorem.

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
2. Independent hostile audits passed the frozen Artifact A.
3. Artifact B added the measurable extreme-boundary replacement needed for
   arbitrary planar compact convex sets.
4. Two independent hostile audits passed Artifact B.
5. A separate affine-dimension-three branch was developed and remains in a
   different repository.
6. Two final solution-aware literature searches found no prior full planar
   theorem, while identifying the one-dimensional case as previously known.
7. A final manuscript-level hostile audit passed the main theorem and
   identified two local edge cases, repaired in the current paper.
8. Aristotle returned a compiling feasibility project with a sorry-free
   foundational layer and three unproved headline declarations.
9. The repaired manuscript was sent to a fresh hostile audit; that return is
   pending and is not yet part of this repository.
10. Specialist human review and absolute historical-priority review remain
   pending.

## Attribution boundary

The mathematical drafts were generated and repaired with GPT-5.6 Pro under
human direction.  Codex organized the audit trail, verified hashes, repaired
the audited manuscript, and prepared the repository and paper.
DannyExperiments is the conventional manuscript author and human curator;
the model contributions are disclosed explicitly in the paper and
`AI_DISCLOSURE.md`.
