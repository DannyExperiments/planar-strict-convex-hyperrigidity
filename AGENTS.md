# Repository instructions

## Mission

Prepare, audit, and eventually formalize the planar strictly convex
POVM/PVM rigidity theorem and its compressed functional-calculus corollary.

## Canonical mathematical scope

Let `K` be a compact convex set of affine dimension at most two, let `E` be a
normalized POVM on `K`, let `F` be a PVM on `K`, and let `g : K -> R` be
continuous and strictly convex.  If `E` and `F` agree on every affine
function and on `g`, the theorem concludes `E = F`.

The operator corollary says that equality under compression for `g` forces
the compression subspace to reduce the commuting self-adjoint tuple.

## Integrity rules

- Preserve every file in `source/` and `audits/` byte-for-byte.
- Do not alter a theorem hypothesis without an explicit change log.
- Do not claim Lean verification until the exact theorem compiles without
  `sorry`, `admit`, new mathematical axioms, or unsafe escapes.
- Do not describe AI audits as human peer review.
- Do not claim historical priority while the solution-aware literature audit
  is pending.
- Keep the affine-dimension-three extension in its separate repository.
- Rebuild the PDF from the current TeX source before publishing any PDF.
- Record hashes, commands, tool versions, and AI contributions.
- Preserve the original Aristotle archive byte-for-byte.  The returned
  `thm_main` declaration matches the manuscript scope, while `cor_tuple` and
  `cor_square` are stronger ambient-space surrogates rather than exact
  formulations on `ran P`.  Keep all three explicit `sorry` declarations
  visible until replaced by real proofs, and do not treat the feasibility
  build as verification of the theorem or either operator corollary.

## Paper rules

- Use `amsart` with `a4paper` and one-inch margins.
- Use the resolved human-curator authorship and explicit model-contribution
  disclosure recorded in `AI_DISCLOSURE.md`.
- Keep the abstract to at most six sentences.
- State the exact POVM/PVM theorem before the operator corollary.
- State Scherer's boundary theorem precisely as the sole external
  hyperrigidity input.
- Distinguish mathematical validity, formal verification, human review, and
  novelty.
