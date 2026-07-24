# Lean formalization status

The theorem in `paper/planar_strict_convex_hyperrigidity.tex` has not been
formalized in Lean.

The exact target is substantially broader than a finite-dimensional matrix
statement: it quantifies over arbitrary Hilbert spaces, normalized POVMs and
PVMs, operator-valued integration, compact convex sets, measurable
subgradient selections, Douglas factorization, spectral calculus, and
hyperrigidity. A finite-matrix encoding would verify only a strict
specialization and must not be presented as verification of the paper.

The recommended formalization order is:

1. the positivity cross-term lemmas;
2. affine exposure;
3. the interval reconstruction theorem;
4. finite-dimensional or separable spectral-measure infrastructure;
5. the common-domain localization lemma;
6. the planar boundaryization and Scherer-dependent step;
7. the full operator corollary.

Until all required infrastructure exists and the exact declarations compile
without `sorry`, `admit`, new mathematical axioms, or unsafe escapes, the
repository must say “ordinary proof audited; exact Lean theorem
unformalized.”

## Local mathlib inspection

On 2026-07-24 the installed Lean 4.30.0/mathlib v4.30.0 tree was searched for
the principal required APIs.  Mathlib contains continuous functional
calculus and positive/completely-positive maps, but no ready implementation
was located for the required POVM/PVM framework, Stinespring or Naimark
dilation, hyperrigidity, Douglas factorization, or the subgradient/Minty
machinery used by the proof.  This makes a full exact formalization a
substantial library-development project rather than a routine translation
of the manuscript.

`ARISTOTLE_EXACT_SCOPE_PROMPT.txt` freezes an exact-scope feasibility request.
It expressly forbids substituting a finite-dimensional or atomic special
case for verification of the manuscript theorem.

## Aristotle return

Aristotle request `6f13344c-d5b5-4805-ab3d-e779ff868afb` completed on
2026-07-24.  Its return is preserved under `aristotle_return_v1/`.

The return provides a sorry-free POVM/PVM foundational layer, including
diagonal scalar measures and a polarization bridge.  It does not prove the
manuscript theorem: `thm_main`, `cor_tuple`, and `cor_square` remain explicit
`sorry` declarations, and the hyperrigidity corollary is not formalized.
`thm_main` matches the manuscript theorem. `cor_tuple` and `cor_square` are
stronger ambient-space surrogates rather than exact formulations of the
operator corollaries on `ran P`.
The archive is pinned to Lean/mathlib v4.28.0 rather than the requested
v4.30.0.  Aristotle reported a successful build of that project; an
independent local replay remains pending.
