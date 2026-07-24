# Gap Report — Planar Strictly Convex Hyperrigidity

This report accompanies the Lean formalization attempt of the manuscript
*"Planar Strictly Convex Hyperrigidity"* (Theorem 1.1, Corollaries 1.2 / 5.1 / 1.3).
It follows the exact-scope, integrity-first protocol requested: it does **not**
substitute a weaker "verified" result for the universal theorem.

## E. Headline status (read this first)

**The full manuscript theorem remains UNFORMALIZED.**  Its proof cannot presently be
carried out in Mathlib without developing substantial missing infrastructure (listed
in §C).  What has been delivered is:

* **genuine, fully-proved (no `sorry`) foundational theory** of normalized POVMs and
  PVMs on an arbitrary Hilbert space, including the diagonal scalar spectral measure
  and the polarization bridge that makes it faithful (`RequestProject/POVM.lean`);
* **faithful, full-scope Lean *statements*** of the main theorem and the operator
  corollary, connected to that foundation, with the deep proofs left explicitly as
  `sorry` (`RequestProject/Statements.lean`).

No finite-dimensional, separable, atomic, matrix, polygonal, smooth, or strongly
convex surrogate was used. Hypotheses were not strengthened. No new axiom, no
`admit`, no `unsafe`, no `@[implemented_by]` was introduced.

## D. Exact versions and build

* Lean toolchain: `leanprover/lean4:v4.28.0` (file `lean-toolchain`).
* Mathlib: pinned at `rev = "v4.28.0"` (file `lakefile.toml`).
* Note on the request: the task text asked for Lean/Mathlib `v4.30.0`; the supplied
  project is pinned to `v4.28.0`, and all work here targets that pinned toolchain.
  Nothing in the delivered foundations depends on version-specific APIs beyond stable
  Mathlib inner-product/measure theory.

`lake build` output (full project):

```
✔ Built RequestProject.POVM
⚠ Built RequestProject.Statements
warning: RequestProject/Statements.lean:54:8: declaration uses `sorry`   -- thm_main
warning: RequestProject/Statements.lean:110:8: declaration uses `sorry`  -- cor_tuple
warning: RequestProject/Statements.lean:142:8: declaration uses `sorry`  -- cor_square
✔ Built RequestProject.Main
Build completed successfully (8029 jobs).
```

Integrity grep (project sources only, `RequestProject/*.lean`):

```
sorry  : 3 occurrences, all genuine proof obligations of the three deep theorems
         (Statements.lean lines 63, 126, 157).  POVM.lean contains no `sorry`.
admit  : NONE
unsafe : NONE
axiom  : NONE
@[implemented_by] : NONE
```

`#print axioms` on the foundational results (e.g. `POVM.agree_of_diagMeasure_eq`)
reports only `propext`, `Classical.choice`, `Quot.sound` — the standard allowed set.

## A. What is honestly completed (sorry-free)

File `RequestProject/POVM.lean`:

* `POVM Ω H` — normalized POVM on a measurable space `Ω` acting on an arbitrary
  complex Hilbert space `H`; positivity on measurable sets, `E ∅ = 0`, `E univ = 1`,
  countable additivity **in the weak operator topology**.
* `PVM Ω H` — POVM with idempotent (projection) values.
* `POVM.isSymmetric_toFun` — values are self-adjoint.
* `POVM.diagMeasure` — the diagonal scalar spectral measure `S ↦ Re⟨E S u, u⟩`, built
  as a genuine `MeasureTheory.Measure` from WOT countable additivity.
* `POVM.diagMeasure_apply`, `POVM.diagMeasure_univ` (total mass `‖u‖²`), and the
  `IsFiniteMeasure` instance.
* `POVM.Agree` (+ `refl`/`symm`/`trans`) — the correct equality notion for
  operator-valued measures (agreement on all Borel sets).
* `POVM.eq_zero_of_re_inner_self_eq_zero` — complex polarization: a self-adjoint
  operator with vanishing real diagonal form is `0`.
* `POVM.agree_of_diagMeasure_eq` — **diagonal measures determine the POVM**; the
  faithful scalar↔operator bridge.
* `POVM.IntegralAgree` — equality of integrals of a fixed bounded function against
  two POVMs, via the diagonal measures.
* `PVM.isSymmetricProjection` — PVM values are orthogonal projections.

These are reusable and make no separability/atomicity/finite-dimensionality
assumption.

## A′. Faithful full-scope statements (proofs are `sorry`)

File `RequestProject/Statements.lean`:

* `thm_main` — **Theorem 1.1**, verbatim scope: arbitrary compact convex
  `K ⊆ V` (finite-dim real inner product space) with `finrank ℝ (vectorSpan ℝ K) ≤ 2`;
  arbitrary complex Hilbert space `H`; normalized POVM `E`, PVM `F`; continuous
  strictly convex `g`; agreement on all affine functions and on `g` ⟹ `E.Agree F`.
* `JointCFC` — an explicit interface for the **joint continuous functional calculus**
  of a commuting self-adjoint tuple (the object the missing joint spectral theorem
  produces and pins down uniquely). Used to state the operator corollary faithfully
  without silently assuming finite rank/atomicity.
* `cor_tuple` — **Corollary 5.1**: compression of a commuting self-adjoint tuple with
  joint spectrum in a `dim ≤ 2` compact convex `K`; equality under compression for one
  strictly convex `g` forces `P` to reduce every `T j`.
* `cor_square` — **Corollary 1.2**: the `m = 2`, `K = [0,1]²` case (commuting positive
  contractions `X, Y`).
* Corollary 1.3 (hyperrigidity of `S_g` in `C(K)`) is discussed but not stated,
  because the operator-system / unique-extension-property equivalence it needs is
  absent from Mathlib (see §C).

## B. Dependency graph of the remaining (unproved) declarations

```
thm_main  (Theorem 1.1)
├─ spectral integral of a continuous function AS AN OPERATOR   [MISSING API]
│    (needed to relate POVM.IntegralAgree to operator moments ∫ ℓ dE, ∫ g dE)
├─ Lemma 2.1  measurable compact-fiber selection               [MATH, provable-ish]
├─ Lemma 2.2  bounded Borel subgradient selector               [MATH, provable-ish]
├─ Lemma 2.4  critical reciprocal (inverse-square) energy       [MATH, hard]
│    └─ Minty parametrization of the subgradient graph          [MISSING API]
├─ Lemma 2.5  common-domain localization  F(C) E(J) F(C) = 0    [MATH + MISSING API]
│    └─ Douglas factorization (SS*≤TT* ⟹ S=TC, C contraction)  [MISSING API]
│    └─ POVM/PVM functional calculus, monotone convergence      [PARTLY MISSING]
├─ Lemma 2.6  affine exposure                                   [MATH + MISSING API]
├─ Lemma 2.7  interval reconstruction (d = 1 case, Brown)       [MATH]
├─ Lemma 3.1  planar boundary stratification                   [MATH, convex geom]
├─ Lemma 3.2  measurable extreme representation kernel          [MATH]
├─ Theorem 3.4  Scherer's planar extreme-boundary rigidity      [EXTERNAL, unpublished]
└─ Lemma 3.5  extreme-supported reconstruction (Jensen)         [MATH]

cor_tuple / cor_square  (Corollaries 5.1 / 1.2)
├─ thm_main                                                     [above]
├─ JointCFC  (joint continuous functional calculus)            [MISSING API]
└─ operator spectral integral / compression identities         [MISSING API]

cor_hyperrigid  (Corollary 1.3)
└─ operator systems, UCP maps, boundary representations,
   hyperrigidity ⇔ unique extension (Arveson/Davidson–Kennedy) [MISSING API]
```

## C. Gap report: missing Mathlib APIs vs. unresolved mathematics

Verified absent from the pinned Mathlib (`v4.28.0`) by source search:

**Missing infrastructure (APIs that must be built before the theorem is expressible
end-to-end):**

1. **Operator-valued measures / their Borel integrals.** No `POVM`/`PVM` type, and no
   integral of a scalar function against an operator-valued measure *returning an
   operator*. (We built the types and the diagonal scalar integral; the operator
   integral and its algebraic/order properties remain.)
2. **PVMs and (joint) spectral calculus.** Mathlib has only the single-variable
   continuous functional calculus (`cfc`) and the eigen-decomposition spectral theorem
   for *compact*/finite-dimensional self-adjoint operators. There is **no** Borel
   functional calculus / spectral measure for general bounded self-adjoint operators,
   and **no** joint calculus for commuting self-adjoint tuples.
3. **Stinespring / Naimark dilation.** Absent (only the GNS construction exists).
4. **Douglas factorization** (`SS* ≤ TT* ⟹ S = TC` with `C` a contraction). Absent in
   the required operator form.
5. **Measurable subgradient selection / Minty parametrization.** The measurable
   selection theorem (Lemma 2.1) is within reach of Mathlib's descriptive set theory;
   the bounded subgradient selector and the Minty `(U, W)` parametrization of the
   subgradient graph are not packaged.
6. **Hyperrigidity / unique-extension formulations.** No operator-system,
   unital-completely-positive-map, or boundary-representation theory; hence Corollary
   1.3 cannot even be stated with Mathlib primitives.

**Unresolved mathematics (content that is genuine mathematics, not just API):**

* The **critical inverse-square energy divergence** (Lemma 2.4) is the technical heart
  and is dimension-sensitive (`d = 1, 2`). It is honest, nontrivial real analysis.
* **Scherer's planar extreme-boundary rigidity theorem** (used as Theorem 3.4) is an
  **unpublished 2024 arXiv preprint** (arXiv:2411.11709). Formalizing it is itself a
  major project; the manuscript uses it as a black box.

## Summary

The exact scope has been pinned down in Lean with faithful statements and a genuine,
sorry-free POVM/PVM foundation. The full theorem and its operator corollary are
**not** proved and are explicitly marked `sorry`; completing them requires building
the missing Mathlib infrastructure above and formalizing (or importing) Scherer's
planar theorem. No weaker result is claimed as a proof of the manuscript's theorem.
