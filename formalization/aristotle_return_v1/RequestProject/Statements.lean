import RequestProject.POVM

/-!
# Faithful statements of the manuscript's main theorem and operator corollary

This file states, **faithfully and at full scope**, the main theorem and the
operator corollary of "Planar Strictly Convex Hyperrigidity", on top of the
genuine `POVM`/`PVM` infrastructure of `RequestProject.POVM`.

The mathematical *proofs* of these statements are **not** provided: they require
substantial infrastructure that is currently absent from Mathlib (spectral
integral of a continuous function as an operator, joint continuous functional
calculus for commuting self-adjoint tuples, Douglas factorization / Naimark
dilation in the operator setting, a measurable subgradient selection theory, the
Minty parametrization + inverse-square energy argument, and Scherer's planar
extreme-boundary rigidity theorem, itself an unpublished 2024 preprint).  See
`GAP_REPORT.md` for the exact dependency graph and gap analysis.

Accordingly the deep results below are stated exactly as in the manuscript but are
left as `sorry`.  **No claim of completion is made for these declarations.**  The
statements are here so that the exact scope is pinned down in Lean and so that the
honest foundations of `RequestProject.POVM` are connected to the target.

Every hypothesis is the manuscript's hypothesis; nothing has been strengthened.
No finite-dimensional Hilbert space, separability, atomicity, smoothness, or
strong-convexity assumption is introduced.
-/

open scoped ComplexOrder InnerProductSpace
open MeasureTheory

noncomputable section

/-! ## Theorem 1.1 (the main theorem)

`K` is an **arbitrary** compact convex set of affine dimension `≤ 2` inside a
finite-dimensional real inner product space `V`; `H` is an **arbitrary** complex
Hilbert space (no separability, no finite dimension); `E` is a normalized POVM and
`F` a PVM on the Borel sets of `K`; `g` is continuous and strictly convex.  Equality
of the `E`- and `F`-integrals of every affine function and of `g` forces `E = F`
(equality on all Borel sets, i.e. `POVM.Agree`). -/

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]

/-- **Theorem 1.1 (Planar strictly convex hyperrigidity).**
Let `K` be compact and convex with `dim aff K ≤ 2`.  Let `E` be a normalized POVM
and `F` a PVM on `K`, acting on the same Hilbert space `H`.  Let `g` be continuous
and strictly convex.  If `∫ ℓ dE = ∫ ℓ dF` for every affine `ℓ` and `∫ g dE = ∫ g dF`,
then `E = F`.

*Status:* stated at full manuscript scope; the proof requires infrastructure not
present in Mathlib (see `GAP_REPORT.md`) and is left as `sorry`. -/
theorem thm_main
    (K : Set V) (hKcompact : IsCompact K) (hKconvex : Convex ℝ K)
    (hdim : Module.finrank ℝ (vectorSpan ℝ K) ≤ 2)
    [MeasurableSpace (↥K)] [BorelSpace (↥K)]
    (E : POVM (↥K) H) (F : PVM (↥K) H)
    (g : V → ℝ) (hgcont : ContinuousOn g K) (hgconv : StrictConvexOn ℝ K g)
    (haff : ∀ ℓ : V →ᵃ[ℝ] ℝ, E.IntegralAgree F.toPOVM (fun x : ↥K => ℓ (x : V)))
    (hg : E.IntegralAgree F.toPOVM (fun x : ↥K => g (x : V))) :
    E.Agree F.toPOVM := by
  sorry

/-! ## The operator corollary

The manuscript's operator corollary (Corollaries 1.2 / 5.1) is a statement about the
**joint continuous functional calculus** of a commuting tuple of bounded
self-adjoint operators.  Mathlib currently has only the *single-variable* continuous
functional calculus (`cfc`); there is no joint calculus for commuting self-adjoint
tuples.  To state the corollary faithfully we therefore package the joint calculus
as an explicit interface `JointCFC`, whose axioms are exactly the defining
properties of the (missing) joint spectral theorem.  This does **not** weaken the
statement: any construction of the joint calculus (which the missing spectral
theorem provides and makes unique) yields such a `JointCFC`. -/

/-- An abstract **joint continuous functional calculus** for a commuting `m`-tuple of
bounded self-adjoint operators with joint spectrum contained in a compact set
`K ⊆ ℝᵐ`, acting on a complex Hilbert space `𝒦`.  This is the interface that the
(currently missing from Mathlib) joint spectral theorem would produce and pin down
uniquely: a unital `ℝ`-algebra homomorphism from real continuous functions on `K`
to self-adjoint operators, sending the `j`-th coordinate to `T j`. -/
structure JointCFC (m : ℕ) (K : Set (EuclideanSpace ℝ (Fin m)))
    (𝒦 : Type*) [NormedAddCommGroup 𝒦] [InnerProductSpace ℂ 𝒦] [CompleteSpace 𝒦]
    (T : Fin m → (𝒦 →L[ℂ] 𝒦)) where
  /-- The functional calculus map on real continuous functions on `K`. -/
  Φ : C(↥K, ℝ) → (𝒦 →L[ℂ] 𝒦)
  map_add : ∀ f g, Φ (f + g) = Φ f + Φ g
  map_smul : ∀ (c : ℝ) f, Φ (c • f) = c • Φ f
  map_one : Φ 1 = 1
  map_mul : ∀ f g, Φ (f * g) = Φ f * Φ g
  selfAdjoint : ∀ f, IsSelfAdjoint (Φ f)
  /-- Coordinate functions are sent to the operators of the tuple. -/
  coord : ∀ j : Fin m, Φ ⟨fun x => (x : EuclideanSpace ℝ (Fin m)) j,
    by fun_prop⟩ = T j

variable {𝒦 : Type*} [NormedAddCommGroup 𝒦] [InnerProductSpace ℂ 𝒦] [CompleteSpace 𝒦]

/-- **Corollary 5.1 (compression forces reduction).**
Let `K ⊆ ℝᵐ` be compact convex with `dim aff K ≤ 2`.  Let `T` be a commuting tuple of
bounded self-adjoint operators with joint spectrum in `K`, with joint calculus
`ΦT`.  Let `P` be an orthogonal projection, `A` the compressions `A j = P T j P` with
their own joint calculus `ΦA` on `H = ran P`.  If a continuous strictly convex `g`
satisfies the compression identity `P g(T) P = g(A)`, then `P` reduces every `T j`.

*Status:* stated at full manuscript scope, modulo the abstract joint calculus
interface `JointCFC` (which stands in for the missing joint spectral theorem); the
proof reduces to `thm_main` but requires the operator spectral integral, also
missing from Mathlib.  Left as `sorry`. -/
theorem cor_tuple
    (m : ℕ) (K : Set (EuclideanSpace ℝ (Fin m)))
    (hKcompact : IsCompact K) (hKconvex : Convex ℝ K)
    (hdim : Module.finrank ℝ (vectorSpan ℝ K) ≤ 2)
    (T : Fin m → (𝒦 →L[ℂ] 𝒦)) (hTsa : ∀ j, IsSelfAdjoint (T j))
    (hTcomm : ∀ i j, Commute (T i) (T j))
    (ΦT : JointCFC m K 𝒦 T)
    (P : 𝒦 →L[ℂ] 𝒦) (hP : IsIdempotentElem P) (hPsa : IsSelfAdjoint P)
    (A : Fin m → (𝒦 →L[ℂ] 𝒦)) (hA : ∀ j, A j = P * T j * P)
    (hAcomm : ∀ i j, Commute (A i) (A j))
    (ΦA : JointCFC m K 𝒦 A)
    (g : EuclideanSpace ℝ (Fin m) → ℝ) (hgcont : ContinuousOn g K)
    (hgconv : StrictConvexOn ℝ K g)
    (hcompr : P * (ΦT.Φ ⟨K.restrict g, hgcont.restrict⟩) * P
      = ΦA.Φ ⟨K.restrict g, hgcont.restrict⟩) :
    ∀ j, Commute P (T j) := by
  sorry

/-- The closed unit square `[0,1]² ⊆ ℝ²`. -/
def unitSquare : Set (EuclideanSpace ℝ (Fin 2)) :=
  {x | ∀ i, x i ∈ Set.Icc (0 : ℝ) 1}

/-- **Corollary 1.2 (the square case).**
Let `X, Y` be commuting positive contractions, `P` an orthogonal projection,
`H = ran P`, `A = P X P|_H`, `B = P Y P|_H`, and assume `A, B` commute.  If
`f : [0,1]² → ℝ` is continuous and strictly convex and `P f(X,Y) P|_H = f(A,B)`, then
`P X = X P` and `P Y = Y P`.

This is the `m = 2`, `K = [0,1]²` case of `cor_tuple`.

*Status:* stated at full manuscript scope, modulo the abstract joint calculus
interface `JointCFC`; left as `sorry`. -/
theorem cor_square
    (X Y : 𝒦 →L[ℂ] 𝒦)
    (hXsa : IsSelfAdjoint X) (hYsa : IsSelfAdjoint Y) (hXYcomm : Commute X Y)
    (hXpos : (X).IsPositive) (hYpos : (Y).IsPositive)
    (hXle : X ≤ 1) (hYle : Y ≤ 1)
    (cfcT : JointCFC 2 unitSquare 𝒦 ![X, Y])
    (P : 𝒦 →L[ℂ] 𝒦) (hP : IsIdempotentElem P) (hPsa : IsSelfAdjoint P)
    (A B : 𝒦 →L[ℂ] 𝒦) (hAeq : A = P * X * P) (hBeq : B = P * Y * P)
    (hABcomm : Commute A B)
    (cfcA : JointCFC 2 unitSquare 𝒦 ![A, B])
    (f : EuclideanSpace ℝ (Fin 2) → ℝ) (hfcont : ContinuousOn f unitSquare)
    (hfconv : StrictConvexOn ℝ unitSquare f)
    (hcompr : P * (cfcT.Φ ⟨unitSquare.restrict f, hfcont.restrict⟩) * P
      = cfcA.Φ ⟨unitSquare.restrict f, hfcont.restrict⟩) :
    Commute P X ∧ Commute P Y := by
  sorry

/-! ## Corollary 1.3 (hyperrigidity)

The manuscript also records the equivalent statement that the function system
`S_g = span_ℂ (A(K) ∪ {g})` is hyperrigid in `C(K)`.  Formalizing *this* form requires
the operator-system / unique-extension-property theory of Arveson–Davidson–Kennedy
(unital completely positive maps, boundary representations, the equivalence between
hyperrigidity and unique extension), which is not present in Mathlib.  It is
therefore not stated here; the POVM/PVM equality `thm_main` is the concrete content
that the hyperrigidity reformulation encodes.  See `GAP_REPORT.md`. -/

end
