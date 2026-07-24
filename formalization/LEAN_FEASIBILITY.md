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
repository must say “ordinary proof audited; Lean formalization pending.”

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
