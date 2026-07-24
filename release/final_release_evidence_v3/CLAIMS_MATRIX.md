# Claims matrix

| Claim | Exact scope | Dependency | Status |
|---|---|---|---|
| Interior localization | Compact disjoint \(C\subset\operatorname{ri}K\), \(J\subset K\), affine dimension at most two | Bregman separation, Douglas factorization, Minty covering, critical energy | Passed artifact audits and final paper audit; \(d=0\) wording repaired |
| Interval reconstruction | Continuous strictly convex \(g\) on a compact interval | Localization and affine endpoint exposure | Passed artifact audits and final paper audit; singleton wording repaired |
| Square theorem | \(K=[0,1]^2\), arbitrary continuous strictly convex \(g\) | Artifact A | Passed two audits |
| Polytope theorem | Compact convex polytope of affine dimension at most two | Artifact A | Passed two audits |
| Extreme-boundary reconstruction | Arbitrary planar compact convex \(K\) | Scherer's planar boundary theorem and strict Jensen equality | Passed two audits |
| Main planar theorem | Arbitrary compact convex \(K\), affine dimension at most two | Artifacts A and B; Scherer's planar extreme-boundary theorem | **PASS in final release hostile audit; human specialist review pending** |
| Operator compression corollary | Commuting self-adjoint tuple with joint spectrum in such \(K\) | Main planar theorem and leakage identity | **PASS in final release hostile audit** |
| One-dimensional prior art | \(\dim\operatorname{aff}K\leq1\), arbitrary continuous strictly convex \(g\), diffuse spectra allowed | Brown 2016; also Scherer after graph lift | **Previously known** |
| Two-dimensional prior-art search | \(\dim\operatorname{aff}K=2\), arbitrary continuous strictly convex \(g\), arbitrary/diffuse representations | Two separately run solution-aware searches through 2026-07-24 | **No prior theorem located; apparently new** |
| Historical priority | Absolute claim that no earlier equivalent exists | Specialist review and broader citation verification | **Pending; no “first” claim** |
| Human peer review | Specialist review of exact paper | External reviewer | **Pending** |
| Lean foundations | Arbitrary-Hilbert-space POVM/PVM scalarization and polarization layer | Aristotle return on Lean/mathlib v4.28.0 | **Aristotle-reported compiling and sorry-free; independent replay pending** |
| Lean statement scope | `thm_main` matches the arbitrary-Hilbert-space manuscript theorem; `cor_tuple` and `cor_square` are stronger ambient-space surrogates, not the manuscript's `ran P` corollaries | Aristotle return plus scope comparison | **Disclosed exactly; all three declarations remain `sorry`** |
| Lean verification | Manuscript theorem and operator corollaries | New formal infrastructure plus Scherer formalization and exact `ran P` operator declarations | **Unformalized; no headline Lean proof is claimed** |

## Forbidden inferences

- AI audit is not human peer review.
- A mathematical PASS does not convert an overall documentary
  `REPAIRABLE` verdict into an overall release PASS.
- Preliminary literature searches do not prove priority.
- A future finite-dimensional Lean theorem would not verify the full
  arbitrary-Hilbert-space result.
- The dimension-three companion results do not strengthen the planar theorem
  to unrestricted affine dimension three.
