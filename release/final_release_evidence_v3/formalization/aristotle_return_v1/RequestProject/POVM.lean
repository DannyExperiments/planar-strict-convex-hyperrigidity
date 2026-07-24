import Mathlib

/-!
# Operator-valued measures: POVMs and PVMs

This file develops, from first principles, genuine, fully-proved foundational
infrastructure needed to *state* the main theorem of the manuscript
"Planar Strictly Convex Hyperrigidity", namely:

* `POVM Ω H` — a **normalized positive-operator-valued measure** on a measurable
  space `Ω`, acting on an arbitrary complex Hilbert space `H`, countably additive
  in the weak operator topology (WOT);
* `PVM Ω H` — a **projection-valued measure**, i.e. a POVM whose values are
  (orthogonal) projections;
* `POVM.diagMeasure` — the scalar (diagonal) spectral measure `S ↦ ⟨E S u, u⟩`,
  a genuine `MeasureTheory.Measure`, obtained here as an honest countably additive
  measure from the WOT countable additivity of the POVM;
* `POVM.Agree` / `POVM.IntegralAgree` — equality of two operator-valued measures,
  and equality of the integrals of a fixed bounded function against them, both
  expressed faithfully through the diagonal scalar measures.

All results in this file are complete proofs, with no unfinished proof
obligations, no new axioms, and no compiler escapes.  They are reusable and
mathematically faithful: no finite-dimensional,
separability, or atomicity assumption is made anywhere.

The genuinely missing mathematical infrastructure (spectral integral of a
continuous function *as an operator*, joint spectral calculus, Douglas
factorization, Naimark dilation, the planar energy/Minty argument and Scherer's
planar theorem) is documented in `RequestProject/Statements.lean` and in
`GAP_REPORT.md`; none of it is currently available in Mathlib.
-/

open scoped ComplexOrder InnerProductSpace
open MeasureTheory

noncomputable section

variable {Ω : Type*} [MeasurableSpace Ω]
variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]

/-- A **normalized positive-operator-valued measure** (POVM) on a measurable space `Ω`
acting on a complex Hilbert space `H`.

`toFun S` is a bounded operator for each Borel set `S`; it is positive on measurable
sets, sends `∅` to `0` and the whole space to `1`, and is countably additive in the
**weak operator topology**: for every pairwise-disjoint measurable family `s` and all
vectors `u, v`, the scalars `⟨(toFun (s n)) u, v⟩` sum to `⟨(toFun (⋃ n, s n)) u, v⟩`. -/
structure POVM (Ω H : Type*) [MeasurableSpace Ω] [NormedAddCommGroup H]
    [InnerProductSpace ℂ H] [CompleteSpace H] where
  /-- The underlying operator-valued set function. -/
  toFun : Set Ω → (H →L[ℂ] H)
  /-- Each value on a measurable set is a positive operator. -/
  isPositive' : ∀ ⦃S⦄, MeasurableSet S → (toFun S).IsPositive
  /-- The empty set is sent to `0`. -/
  empty' : toFun ∅ = 0
  /-- Normalization: the whole space is sent to the identity. -/
  univ' : toFun Set.univ = 1
  /-- Countable additivity in the weak operator topology. -/
  additive' : ∀ (s : ℕ → Set Ω), (∀ n, MeasurableSet (s n)) →
      Pairwise (Function.onFun Disjoint s) →
      ∀ u v : H, HasSum (fun n => inner ℂ (toFun (s n) u) v) (inner ℂ (toFun (⋃ n, s n) u) v)

/-- A **projection-valued measure** (PVM): a POVM whose values on measurable sets are
idempotent (hence, being also positive, orthogonal projections). -/
structure PVM (Ω H : Type*) [MeasurableSpace Ω] [NormedAddCommGroup H]
    [InnerProductSpace ℂ H] [CompleteSpace H] extends POVM Ω H where
  /-- Each value on a measurable set is an idempotent operator. -/
  isProjection' : ∀ ⦃S⦄, MeasurableSet S → IsIdempotentElem (toFun S)

namespace POVM

/-- The value of a POVM on a measurable set is a self-adjoint operator. -/
theorem isSymmetric_toFun (E : POVM Ω H) {S : Set Ω} (hS : MeasurableSet S) :
    (E.toFun S).IsSymmetric := (E.isPositive' hS).isSymmetric

/-- The scalar (diagonal) spectral measure `S ↦ Re ⟨E S u, u⟩` of a POVM at a vector `u`.
This is a genuine `MeasureTheory.Measure`, whose countable additivity is extracted from
the WOT countable additivity of the POVM. -/
def diagMeasure (E : POVM Ω H) (u : H) : Measure Ω :=
  Measure.ofMeasurable
    (fun S _ => ENNReal.ofReal (RCLike.re (inner ℂ (E.toFun S u) u)))
    (by simp [E.empty'])
    (by
      intro s hmeas hdisj
      dsimp only
      have hnn : ∀ n, 0 ≤ RCLike.re (inner ℂ (E.toFun (s n) u) u) :=
        fun n => (E.isPositive' (hmeas n)).re_inner_nonneg_left u
      have hsum := E.additive' s hmeas hdisj u u
      have hre : HasSum (fun n => RCLike.re (inner ℂ (E.toFun (s n) u) u))
          (RCLike.re (inner ℂ (E.toFun (⋃ n, s n) u) u)) := by
        have := hsum.mapL (RCLike.reCLM (K := ℂ)); simpa using this
      rw [← hre.tsum_eq, ENNReal.ofReal_tsum_of_nonneg hnn hre.summable])

@[simp]
theorem diagMeasure_apply (E : POVM Ω H) (u : H) {S : Set Ω} (hS : MeasurableSet S) :
    E.diagMeasure u S = ENNReal.ofReal (RCLike.re (inner ℂ (E.toFun S u) u)) :=
  Measure.ofMeasurable_apply S hS

/-- The total mass of the diagonal measure at `u` is `‖u‖²`; in particular every
diagonal spectral measure is finite.  (Normalization of the POVM.) -/
theorem diagMeasure_univ (E : POVM Ω H) (u : H) :
    E.diagMeasure u Set.univ = ENNReal.ofReal (‖u‖ ^ 2) := by
  rw [diagMeasure_apply E u MeasurableSet.univ, E.univ',
    ContinuousLinearMap.one_apply, inner_self_eq_norm_sq]

instance (E : POVM Ω H) (u : H) : IsFiniteMeasure (E.diagMeasure u) :=
  ⟨by rw [diagMeasure_univ]; exact ENNReal.ofReal_lt_top⟩

/-- Two POVMs **agree** if their values coincide on every measurable set.  For
operator-valued measures this is the correct notion of equality (the values on
non-measurable sets are unconstrained). -/
def Agree (E F : POVM Ω H) : Prop := ∀ ⦃S⦄, MeasurableSet S → E.toFun S = F.toFun S

theorem Agree.refl (E : POVM Ω H) : E.Agree E := fun _ _ => rfl

theorem Agree.symm {E F : POVM Ω H} (h : E.Agree F) : F.Agree E := fun _ hS => (h hS).symm

theorem Agree.trans {E F G : POVM Ω H} (h₁ : E.Agree F) (h₂ : F.Agree G) : E.Agree G :=
  fun _ hS => (h₁ hS).trans (h₂ hS)

omit [CompleteSpace H] in
/-- Recovery of the operator from the diagonal quadratic form: a self-adjoint operator
with vanishing real diagonal form is zero (complex polarization). -/
theorem eq_zero_of_re_inner_self_eq_zero {T : H →L[ℂ] H} (hsa : T.IsSymmetric)
    (h : ∀ u, RCLike.re (inner ℂ (T u) u) = 0) : T = 0 := by
  have hz : ∀ u, inner ℂ (T u) u = 0 := by
    intro u
    have hreal : (starRingEnd ℂ) (inner ℂ (T u) u) = inner ℂ (T u) u := by
      rw [inner_conj_symm]; simpa using (hsa u u).symm
    have him : (inner ℂ (T u) u).im = 0 := Complex.conj_eq_iff_im.mp hreal
    exact Complex.ext (by simpa using h u) (by simpa using him)
  exact ContinuousLinearMap.coe_injective ((inner_map_self_eq_zero (T : H →ₗ[ℂ] H)).mp hz)

/-- **Diagonal measures determine the POVM.** If two POVMs have the same diagonal
spectral measure at every vector, then they agree on every measurable set.  This is
the faithful "polarization" bridge between the scalar picture and the operator
picture. -/
theorem agree_of_diagMeasure_eq {E F : POVM Ω H}
    (h : ∀ u, E.diagMeasure u = F.diagMeasure u) : E.Agree F := by
  intro S hS
  have hre : ∀ u, RCLike.re (inner ℂ (E.toFun S u) u) = RCLike.re (inner ℂ (F.toFun S u) u) := by
    intro u
    have hEF : E.diagMeasure u S = F.diagMeasure u S := by rw [h u]
    rw [diagMeasure_apply E u hS, diagMeasure_apply F u hS] at hEF
    have hEnn : 0 ≤ RCLike.re (inner ℂ (E.toFun S u) u) :=
      (E.isPositive' hS).re_inner_nonneg_left u
    have hFnn : 0 ≤ RCLike.re (inner ℂ (F.toFun S u) u) :=
      (F.isPositive' hS).re_inner_nonneg_left u
    have := (ENNReal.ofReal_eq_ofReal_iff hEnn hFnn).mp hEF
    exact this
  have hsa : (E.toFun S - F.toFun S).IsSymmetric := by
    intro x y
    simp only [ContinuousLinearMap.coe_sub, LinearMap.sub_apply, inner_sub_left, inner_sub_right]
    rw [E.isSymmetric_toFun hS x y, F.isSymmetric_toFun hS x y]
  have hzero : E.toFun S - F.toFun S = 0 := by
    apply eq_zero_of_re_inner_self_eq_zero hsa
    intro u
    have hsub : inner ℂ ((E.toFun S - F.toFun S) u) u
        = inner ℂ (E.toFun S u) u - inner ℂ (F.toFun S u) u := by
      rw [ContinuousLinearMap.sub_apply, inner_sub_left]
    rw [hsub, map_sub, hre u, sub_self]
  exact sub_eq_zero.mp hzero

/-- Integral agreement of two POVMs against a fixed bounded Borel function `f`,
expressed through the diagonal scalar measures: for every vector `u`, the (real)
integrals of `f` against the diagonal measures coincide.  This is exactly the
faithful meaning of `∫ f dE = ∫ f dF` as operators (by complex polarization). -/
def IntegralAgree (E F : POVM Ω H) (f : Ω → ℝ) : Prop :=
  ∀ u : H, ∫ x, f x ∂(E.diagMeasure u) = ∫ x, f x ∂(F.diagMeasure u)

end POVM

namespace PVM

/-- The value of a PVM on a measurable set is an orthogonal projection: idempotent and
self-adjoint. -/
theorem isSymmetricProjection (F : PVM Ω H) {S : Set Ω} (hS : MeasurableSet S) :
    IsIdempotentElem (F.toFun S) ∧ (F.toFun S).IsSymmetric :=
  ⟨F.isProjection' hS, (F.toPOVM.isPositive' hS).isSymmetric⟩

end PVM

end
