# Final release audit evidence packet

## Purpose and instructions

This packet accompanies the current manuscript
`paper/planar_strict_convex_hyperrigidity.tex`. It records exact release
evidence so that a final referee can verify the manuscript's documentary
claims. It is not a mathematical argument and must not be treated as evidence
that any theorem is true.

Audit the manuscript independently. Do not infer correctness from earlier
audits, the existence of a repository, a successful TeX build, or the
Aristotle return. Earlier audit reasoning is intentionally omitted to reduce
anchoring.

## Exact manuscript under review

| Item | Value |
|---|---|
| TeX path | `paper/planar_strict_convex_hyperrigidity.tex` |
| TeX SHA-256 | `e5a8c072a8fc48b4c1df36e078e3395547677910442b42a48bfdb433e95123e9` |
| Status | Private pre-release manuscript |
| Human curator and conventional author | DannyExperiments |
| Ordinary proof generation and repair | OpenAI GPT-5.6 Pro under human direction |
| Manuscript preparation and provenance tooling | OpenAI Codex |

The paper contains fourteen numbered mathematical results. The final referee
must enumerate them from the manuscript and return a separate verdict for
each; this packet does not supply their prior verdicts.

## Frozen proof sources

| File | SHA-256 |
|---|---|
| `source/Artifact_A_square_polytope.md` | `c43e287a90242e3f5948c34328adf54e9c4b60630dfe6a3ab5eff1f54a495b69` |
| `source/Artifact_B_planar_compact_convex.md` | `a0ebb8e7897760d789de3fe9b1d31611aaef310f88d41ffabb073da6d85c4728` |

The source artifacts are preserved byte-for-byte. The manuscript is a
rewritten paper, so the referee must check its statements and proofs directly
rather than assuming equivalence from these hashes.

## Audit chronology evidence

Six AI-generated audit reports are preserved in the private repository. None
is human peer review. The manuscript accurately distinguishes:

1. an assembled-manuscript audit that accepted the central theorem and
   corollaries but identified two local omissions later repaired; and
2. a fresh repaired-manuscript audit that passed all fourteen numbered
   mathematical results but classified the submission overall as repairable
   because of documentary, citation, provenance, and release-wording defects.

The second report is preserved as
`audits/repaired_manuscript_hostile_audit.md`, SHA-256
`52cbcb253c3b33089f2c8285c95f29c3545749d8ce094f9522669728b8b15822`.
Its reasoning is not reproduced here. The current TeX postdates and
incorporates the documentary repairs.

## Literature-status evidence

Two independent AI-assisted solution-aware searches are preserved:

| File | SHA-256 |
|---|---|
| `literature/final_deep_research_report.md` | `16d085483ded93534c4598ba3b81336433b808c1a8ccbc3e29655a9c183a094e` |
| `literature/final_pro_literature_report.md` | `362aceeae65269e0423ae136a1dbc0b0929a1e7432434c18d7f56c8747e86025` |

They located prior coverage of the affine-dimension-at-most-one case and did
not locate the full theorem claimed in the manuscript. This is negative-search
evidence only. The manuscript does not claim absolute historical priority or
human specialist confirmation.

## Aristotle and formal-verification evidence

| Item | Value |
|---|---|
| Aristotle request ID | `6f13344c-d5b5-4805-ab3d-e779ff868afb` |
| Returned archive SHA-256 | `1887d86be11c597cfcbc604346b3efb55260cb3bbecbf69720443c5210b6bc1f` |
| Returned toolchain | Lean 4 / mathlib `v4.28.0` |
| Service-reported result | Successful build, 8,029 jobs |
| Independent replay | Pending |

The repository declaration scan finds no `sorry`, `admit`, new mathematical
`axiom` or `constant`, or `unsafe` escape in the foundational files
`POVM.lean` and `Main.lean`. The exact-scope file `Statements.lean` contains
exactly three disclosed `sorry` declarations, for `thm_main`, `cor_tuple`,
and `cor_square`. Therefore the manuscript's main theorem is not claimed as
Lean-verified.

## Current paper build evidence

| Item | Value |
|---|---|
| Paper-build source commit | `4b2822bc33cfdea9a7408174d0be0e1b0c101d2e` |
| GitHub Actions run | `30062596744` |
| GitHub Actions artifact ID | `8585105883` |
| Artifact ZIP SHA-256 | `058b91a5123366630a5442c4fd653ef796f31bae4f388808fdfd15c6072b8c88` |
| Compiled PDF SHA-256 | `465709ab87602367fde8bc95c2a829d8d7d19f110a14ffffa0240f17749ec54f` |
| PDF properties | 8 pages, A4, produced by pdfTeX 1.40.29 |

All eight rendered pages were visually inspected on 2026-07-24. No clipping,
overlap, broken glyph, unresolved reference, or bibliography-layout defect
was observed.

## Required final verdict structure

Return four independent verdicts:

1. **Mathematics:** `PASS`, `REPAIRABLE`, or `FAIL`, including a verdict for
   every numbered result.
2. **Literature and scope language:** `PASS`, `REPAIRABLE`, or `FAIL`.
3. **Verification, provenance, and AI disclosure:** `PASS`, `REPAIRABLE`, or
   `FAIL`.
4. **Compilation and private-release readiness:** `PASS`, `REPAIRABLE`, or
   `FAIL`.

Return `OVERALL PASS` only if all four categories pass. Quote every defect
precisely and give the smallest sound correction. Do not silently repair a
mathematical gap and do not treat a literature search or AI audit as proof.
