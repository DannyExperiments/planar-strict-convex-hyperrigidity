# Consolidated literature verdict

Date assessed: 2026-07-24.

## Exact conclusion

Two independent solution-aware searches located no prior theorem proving all
of the following simultaneously:

1. \(K\) is an arbitrary compact convex set of affine dimension two;
2. \(g\in C(K)\) is an arbitrary strictly convex function; and
3. hyperrigidity, POVM/PVM uniqueness, or compression rigidity is asserted
   for every representation, including diffuse spectra.

The accurate status is therefore:

- **Mathematical proof status:** the frozen ordinary proof passed two audits
  at each of its A and B stages. The first assembled manuscript also passed
  a hostile audit subject to two local repairs, both incorporated. A fresh
  audit of the repaired manuscript is pending.
- **Affine dimension zero or one:** previously known, principally from
  Brown's one-variable strict-convexity theorem.
- **Affine dimension two, special \(g\):** previously known in subclasses,
  including positive-definite quadratics and certain explicitly specified
  monomial systems in a single normal generator.
- **Affine dimension two, arbitrary \(g\):** no prior theorem located;
  **apparently new**, with moderate-to-high literature confidence.
- **Absolute historical priority:** not established. No “first proof” claim
  should be made before specialist review.

## Graph-hull formulation

For

\[
\Gamma_g=\{(x,g(x)):x\in K\},\qquad
L_g=\operatorname{conv}\Gamma_g,
\]

restriction gives a complete order isomorphism

\[
A(L_g)|_{\Gamma_g}\cong \operatorname{span}(A(K),g),
\]

and strict convexity gives \(\operatorname{ex}L_g=\Gamma_g\). Thus the paper's
theorem is equivalent to hyperrigidity of \(A(L_g)\) in
\(C(\operatorname{ex}L_g)\).

If \(g\) is nonaffine, then

\[
\dim\operatorname{aff}L_g=\dim\operatorname{aff}K+1.
\]

This explains the exact prior-art boundary: Scherer's planar theorem covers
the lift of a one-dimensional \(K\), while a planar \(K\) produces a
three-dimensional graph hull not covered by that theorem.

Scherer's 2026 spectrahedra theorem covers a compact spectrahedral graph hull
with closed extreme boundary.  It does not cover an arbitrary graph hull
\(L_g\), because no spectrahedral representation is available for a general
continuous strictly convex \(g\).

## Independently checked primary-source points

- Scherer's Theorem 3.8 proves \(A(L)\) hyperrigid in
  \(C(\operatorname{ex}L)\) for planar compact convex \(L\).
- Brown's theorem covers arbitrary continuous strictly convex functions in
  one self-adjoint variable, including diffuse spectra.
- Shankar's Corollary 4.2 covers \(\{T,TT^*\}\) for normal \(T\), yielding the
  positive-definite quadratic planar subclass.
- Davidson--Kennedy arXiv v1 claimed the commutative hyperrigidity conjecture,
  but the final v4/journal abstract instead reduces it to a maximal-measure
  question; the withdrawn v1 claim must not be used.
- Kleski's result has codomain \(A''\) and is weaker than full hyperrigidity.

The raw reports contain broader citation trails. Those trails remain leads
unless their exact theorem statements are independently checked.
