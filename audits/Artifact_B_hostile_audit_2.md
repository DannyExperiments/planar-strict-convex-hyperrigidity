# Hostile audit

I treated Artifact B and Artifact C v2 as fresh submissions, reconstructed the load-bearing arguments, and did not assume any earlier audit verdict. Artifact B is the planar theorem and corollary.  Artifact C v2 contains the dimension-three results and obstructions. 

I use:

* **PASS**: no counterexample or unfilled logical gap under the stated hypotheses.
* **REPAIRABLE**: the wording or proof has a genuine defect, but the intended result follows after an explicit local repair.
* **FAIL**: the stated theorem is false or the proof requires a new unproved theorem.

## Verdict summary

| No. | Claim                                                       | Verdict                                                     | Confidence |
| --: | ----------------------------------------------------------- | ----------------------------------------------------------- | ---------- |
|   1 | Artifact B planar theorem and operator corollary            | **PASS**                                                    | High       |
|   2 | Restricted spectral-dimension theorem                       | **PASS**                                                    | High       |
|   3 | Compact surface/curve-support corollary                     | **PASS** under the standard meaning of “curve”              | High       |
|   4 | Finite exposed-face theorem                                 | **PASS**, conditional on B                                  | High       |
|   5 | Sphere affine rigidity                                      | **PASS**                                                    | High       |
|   6 | Boundary-supported ellipsoid theorem                        | **PASS**                                                    | High       |
|   7 | Hybrid ellipsoid theorem                                    | **REPAIRABLE**                                              | High       |
|   8 | Dimension-three operator corollary                          | **REPAIRABLE**                                              | High       |
|   9 | Finite inverse-square-energy example                        | **PASS**                                                    | High       |
| 10a | Obstruction to the unrestricted energy argument             | **PASS**, narrowly construed                                | High       |
| 10b | Obstruction to affine exposure on diffuse curved boundaries | **PASS**, narrowly construed                                | High       |
|  11 | “Unrestricted dimension three remains unresolved”           | **REPAIRABLE** as a global claim; branch-local claim passes | Moderate   |

No stated uniqueness theorem is refuted by a counterexample. The two definite mathematical drafting defects are in Claims 7 and 8.

---

## 1. Artifact B’s arbitrary compact-convex planar theorem and operator corollary

**Verdict: PASS.**

### External dependency

The sole new external dependency, Scherer’s theorem, is real and has the required strength: for every compact convex (K\subset\mathbb R^2), the affine function system (A(K)) is hyperrigid in (C(\operatorname{ex}K)). Hyperrigidity is formulated as uniqueness of a UCP extension agreeing with a representation, exactly the POVM-versus-PVM assertion used by Artifact B. ([arXiv][1])

Thus, if (M) is a normalized POVM and (N) a PVM on (Z=\operatorname{ex}K) with identical affine moments, the corresponding UCP map and representation agree on (A(K)|_Z), so they agree on all of (C(Z)), and (M=N).

### Imported interior localization

Artifact B imports P1–P5 rather than reproving them, so it is not literally a standalone “complete proof.” That is a presentation issue, not a theorem gap. The critical imported assertion P1 survives independent reconstruction, including for nonsmooth (g).

For compact (C\subset\operatorname{ri}K) and disjoint compact (J), one chooses a bounded Borel relative subgradient
[
p(z)\in\partial_K g(z)
]
and defines
[
D_z(t)=g(t)-g(z)-\langle p(z),t-z\rangle.
]
Strict convexity gives (D_z(t)>0) for (t\ne z), and compactness of the subgradient graph gives a uniform positive lower bound on (C\times J).

If
[
T=F(C)E(J)F(C)\ne0,
]
the Douglas-factorization argument produces a nonzero scalar spectral measure (\mu) on (C) with
[
\iint_{C\times C}\frac{d\mu(z)d\mu(t)}{D_z(t)}<\infty.
]

The nonsmooth critical-energy step is sound. Monotonicity of the selected subgradients gives
[
D_z(t)\le \frac12\left|(z,p(z))-(t,p(t))\right|^2.
]
Under the Minty variables
[
U(z)=z+p(z),\qquad W(z)=z-p(z),
]
one has
[
|W(z)-W(t)|\le |U(z)-U(t)|,
]
and (U) is injective. Hence the graph ((z,p(z))) is bi-Lipschitz-controlled by a subset of (\mathbb R^d), (d\le2). A cube partition then forces the (2)-Riesz energy of every nonzero measure on that graph to diverge. This contradicts the Douglas estimate.

No differentiability of (g) is being smuggled in.

### Planar boundary decomposition

The planar geometric decomposition is correct:

[
K=K^\circ;\dot\cup;\operatorname{ex}K
;\dot\cup;\bigdotcup_n\operatorname{ri}L_n.
]

A nonextreme planar boundary point lies in the relative interior of a nondegenerate exposed segment. The relative interiors of maximal such segments are pairwise disjoint and relatively open in the second-countable boundary, hence countable. Their endpoints are extreme. Consequently (\operatorname{ex}K) is closed and compact.

This conclusion is special to affine dimension two; the proof does not improperly export it to dimension three.

### Measurable boundaryization

The compact-fiber selection argument works. The relation
[
\mathcal R={(x,\nu):\operatorname{bar}(\nu)=x}
\subset K\times\mathcal P(Z)
]
is compact with nonempty fibers, so it has a Borel selector (x\mapsto\nu_x).

For (z\in Z), extremality implies that the only representing measure is (\delta_z), so the selector automatically satisfies
[
\nu_z=\delta_z.
]

For every Borel (S\subset Z), the evaluation map
[
\nu\longmapsto \nu(S)
]
is Borel. Therefore
[
\widehat G(S)=\int_K\nu_x(S),dG(x)
]
is a well-defined POVM. There is no hidden requirement that the Hilbert space be separable.

Strict Jensen equality then gives
[
\widetilde g(x):=\int_Zg,d\nu_x
\begin{cases}
=g(x),&x\in Z,\

> g(x),&x\notin Z.
> \end{cases}
> ]
> Once Scherer identifies (\widehat G=N), equality of the (g)-moments forces
> [
> \int_K(\widetilde g-g),dG=0.
> ]
> Level-set positivity proves (G(K\setminus Z)=0), after which (\widehat G=G=N).

This handles genuinely diffuse PVMs; no atoms are used.

### Spectral gluing and cross terms

The final gluing argument is valid. For a positive contraction (T) and a projection (Q),
[
QTQ=Q
\quad\Longrightarrow\quad
TQ=Q,
]
because (Q(I-T)Q=0), while
[
QTQ=0
\quad\Longrightarrow\quad
TQ=0.
]

Thus, once the diagonal compressions on the interior, flat-face, and extreme strata have been identified, all off-diagonal terms vanish automatically. This remains valid for countably many strata and on a nonseparable Hilbert space.

### Operator corollary

The compressed spectral containment argument is correct. If
[
\lambda\in\sigma(A_1,\dots,A_m)\setminus K,
]
finite-dimensional affine separation produces an affine (\ell) with
[
\ell\ge0\ \text{on }K,\qquad \ell(\lambda)<0.
]
But
[
\ell(A)=V^*\ell(T)V\ge0,
]
while spectral mapping puts (\ell(\lambda)) in (\sigma(\ell(A))), a contradiction.

After (E=F),
[
V^*T_j^2V=A_j^2,
]
and
[
V^*T_j^2V-A_j^2
===============

\big((I-P)T_jV\big)^*\big((I-P)T_jV\big),
]
so (P) reduces every (T_j).

**Conclusion for Claim 1:** no theorem counterexample and no unresolved proof gap.

---

## 2. Artifact C’s restricted spectral-dimension theorem

**Verdict: PASS.**

The argument remains valid at the critical (O(r^{-2})) covering rate.

### Quadratic Bregman estimate

Although the (C^{1,1}) extension need not be convex outside (K), that causes no problem. Along every segment in (K), the restriction is convex, so
[
D_z(t)=g(t)-g(z)-\langle\nabla g(z),t-z\rangle\ge0.
]
Strict convexity gives equality only at (t=z).

The Lipschitz-gradient estimate gives
[
D_z(t)
======

\int_0^1
\left\langle\nabla g(z+s(t-z))-\nabla g(z),,t-z\right\rangle ds
\le \frac L2|t-z|^2.
]

This is valid at boundary points of (K) as well.

### Critical covering-growth argument

Suppose (C\subset\Sigma) and (\mu(C)=m>0). A cover by at most (Cr^{-2}) sets of diameter (r), converted into a partition (Q_j), gives
[
(\mu\times\mu){|z-t|\le r}
\ge
\sum_j\mu(Q_j)^2
\ge
\frac{m^2}{Cr^{-2}}
===================

\frac{m^2}{C}r^2.
]
Consequently,
[
\begin{aligned}
\iint\frac{d\mu(z)d\mu(t)}{|z-t|^2}
&=
2\int_0^\infty
r^{-3}
(\mu\times\mu){|z-t|\le r},dr\
&\ge
\frac{2m^2}{C}\int_0^{r_0}\frac{dr}{r}
=\infty.
\end{aligned}
]

This is exactly the logarithmic critical divergence. The proof does not require any dimension strictly below two or any positive lower density. Atoms only make the divergence more immediate.

Since
[
D_z(t)\le\frac L2|z-t|^2,
]
reciprocal Bregman energy also diverges.

### Douglas localization

For
[
T=F(C)E(J)F(C),
\qquad
M_z=F(C)\left(\int D_z,dF\right)F(C),
]
the inequality
[
cT\le M_z
]
has the correct Douglas orientation:
[
\sqrt c,T^{1/2}=M_z^{1/2}C_z.
]

The truncations
[
h_n(s)=
\begin{cases}
\min{n,s^{-1}},&s>0,\
n,&s=0
\end{cases}
]
satisfy (0\le sh_n(s)\le1), and the spectral-calculus identity is legitimate because, on (F(C)H),
[
M_z=\int_C D_z(t),dF(t).
]

No measurable choice (z\mapsto C_z) is needed. Each (z) gives the same scalar upper bound, while
[
(z,t)\mapsto D_z(t)^{-1}
]
is Borel. Tonelli applies to the kernel, not to the Douglas contractions.

### Reconstruction

The support step, equality on compact subsets of (\Sigma), regularity, and polarization are all valid. Nothing uses separability of (H).

**Conclusion for Claim 2:** the theorem withstands diffuse spectral measures, critical carriers, boundary carriers, and nonseparable Hilbert spaces.

---

## 3. Compact surface/curve-support corollary

**Verdict: PASS under the conventional meaning of the stated geometric terms.**

A compact Lipschitz surface, understood as a compact Lipschitz two-manifold or a compact set covered by finitely many Lipschitz surface charts, has a finite chart cover. A bounded two-dimensional chart domain requires (O(r^{-2})) squares, whose images are contained in (O(r^{-2})) ambient Borel balls of diameter (r).

A rectifiable curve, understood conventionally as the image of a finite-length continuous path, admits a (1)-Lipschitz arclength parametrization. Partitioning its parameter interval gives (O(r^{-1})), hence certainly (O(r^{-2})), covering growth.

A finite union adds the covering constants.

### Terminological trap

The claim must not be silently broadened from “rectifiable curve” to an arbitrary compact countably (1)-rectifiable set of finite (\mathcal H^1)-measure.

For example, place (N_n^3) separated points in a small cube of side (2^{-n}), where (N_n=2^{n^2}), arrange the cubes disjointly and accumulating at the origin, and include the origin. The resulting set is compact, countable, and has (\mathcal H^1=0), hence is countably (1)-rectifiable in the measure-theoretic sense. At scale
[
r_n\asymp 2^{-n}/N_n,
]
it requires at least (N_n^3) covering sets, while
[
N_n^3/r_n^{-2}\longrightarrow\infty.
]
Thus the (O(r^{-2})) conclusion would fail under that broader set-theoretic usage.

That is not a counterexample to a finite-length rectifiable **curve**.

---

## 4. Finite exposed-face theorem and dependence on B

**Verdict: PASS, conditional on Artifact B.**

For an exposed face (L_j), an affine (r_j\ge0) with zero set (L_j) gives
[
F(L_j)E(K\setminus L_j)F(L_j)=0.
]
Hence the compressed POVM is supported on (L_j).

Every affine function on (\operatorname{aff}L_j) extends to an ambient affine function, so the compressed measures agree on all affine functions required by Artifact B. Strict convexity passes to the convex face (L_j). Artifact B therefore yields
[
F(L_j)E(S)F(L_j)=F(S\cap L_j).
]

### Overlapping faces

Overlaps cause no problem. The projections
[
Q_j=F(S\cap L_j),\qquad
N_j=F(L_j\setminus S)
]
need not be pairwise orthogonal across (j), but they all commute because they come from one PVM. Positivity gives
[
E(S)Q_j=Q_j,\qquad E(S)N_j=0.
]
Their joins are
[
\bigvee_jQ_j=F(S),\qquad
\bigvee_jN_j=F(K\setminus S)
]
because (F) is supported on the union of the faces. Thus (E(S)=F(S)).

The arbitrary-face version genuinely depends on B. The polytope-boundary special case needs only the polygon theorem because each facet is polygonal.

---

## 5. Sphere affine rigidity

**Verdict: PASS.**

Let
[
A_i=\Psi(x_i)=\rho(x_i).
]
For a Stinespring/Naimark dilation (\Psi(h)=V^*\pi(h)V),
[
\Psi(x_i^2)-A_i^2
=================

V^*\pi(x_i)(I-VV^*)\pi(x_i)V
\ge0.
]

The sphere identity gives
[
\sum_i\Psi(x_i^2)=I.
]
Since (\rho) is a representation,
[
\sum_iA_i^2
===========

\rho!\left(\sum_ix_i^2\right)
=I.
]
The positive defects sum to zero, so each vanishes:
[
(I-VV^*)\pi(x_i)V=0,
\qquad
\pi(x_i)V=VA_i.
]

Hence
[
\Psi(hx_i)=\Psi(h)A_i.
]
Induction gives agreement with (\rho) on every coordinate polynomial. Coordinate polynomials form a self-adjoint unital algebra separating points of (S^2), so Stone–Weierstrass gives density in (C(S^2)).

The dilation construction does not require separability, and no atomicity is used.

This is genuine affine rigidity arising from the quadratic boundary identity, not from affine exposure.

---

## 6. Boundary-supported ellipsoid theorem

**Verdict: PASS.**

After an invertible affine transformation, it suffices to treat the closed unit ball.

For (0<|x|<1),
[
\nu_x
=====

\frac{1+|x|}{2}\delta_{x/|x|}
+
\frac{1-|x|}{2}\delta_{-x/|x|}.
]
At the origin any fixed antipodal pair works. The kernel is Borel, has barycenter (x), and equals (\delta_x) on (S^2).

Boundaryization produces a POVM (M) on (S^2) with the same coordinate moments as (F). Sphere rigidity gives (M=F).

For every interior (x), (\nu_x) is nontrivial, so strict convexity yields
[
\widetilde g(x):=\int g,d\nu_x>g(x).
]
On the sphere, equality holds. Thus
[
h=\widetilde g-g
]
is Borel, nonnegative, and vanishes exactly on (S^2). Equality of the (g)-moments gives
[
\int h,dE=0.
]
The level sets ({h\ge1/n}) then have zero (E)-mass, proving that (E) is boundary-supported. Once this is known, its boundaryization is itself, so (E=M=F).

This covers diffuse boundary PVMs and continuous, potentially nonsmooth strictly convex (g).

---

## 7. Hybrid ellipsoid theorem

**Verdict: REPAIRABLE.**

There is a definite hypothesis error.

The statement says:

> Assume the hypotheses of Theorem 1, and suppose
> (F(\Sigma\cup\partial K)=I).

But the hypotheses of Theorem 1 already include
[
F(\Sigma)=I.
]
Since (\Sigma\subset\operatorname{int}K), this forces
[
F(\partial K)=0.
]
The statement is therefore literally true but not hybrid: Theorem 1 alone already proves it, and the purported boundary summand is zero.

### Exact repair

Replace the hypothesis by:

> Assume all hypotheses of Theorem 1 **except** its condition (F(\Sigma)=I). Replace that condition with
> [
> F(\Sigma\cup\partial K)=I,
> \qquad
> \Sigma\subset\operatorname{int}K.
> ]

Under this repaired statement, the proof works:

[
R_1=F(\Sigma),\qquad R_2=F(\partial K)
]
are orthogonal and sum to (I). Theorem 1 applies on (R_1H), and the ellipsoid theorem applies on (R_2H). The diagonal identities are then glued by positivity, which removes every cross-summand term.

This is not a counterexample to the intended hybrid theorem. It is a genuine statement-level defect.

---

## 8. Dimension-three operator corollary, including compressed spectral containment

**Verdict: REPAIRABLE.**

### Compressed spectral containment: PASS

The containment
[
\sigma(A_1,A_2,A_3)\subseteq K
]
is correctly proved.

If (\lambda\notin K), affine separation gives (\ell\ge0) on (K) but (\ell(\lambda)<0). Since
[
\ell(T)\ge0,
\qquad
\ell(A)=P\ell(T)P|_{\operatorname{ran}P}\ge0,
]
spectral mapping contradicts (\ell(\lambda)<0).

This handles lower-dimensional affine relations as well as inequalities; no finite facet description of (K) is needed.

### The gap

The corollary assumes only
[
K\subseteq\mathbb R^3
]
compact and convex. It does not assume
[
\dim\operatorname{aff}K=3.
]
The proof nevertheless says “Theorem 1 gives (E=F),” while Theorem 1 is stated only for affine dimension three.

The intended conclusion is still correct, but the invocation is formally outside the theorem’s hypotheses when (K) is lower-dimensional.

### Exact repairs

Either add
[
\dim\operatorname{aff}K=3
]
to the corollary, or split the proof:

[
\begin{cases}
\dim\operatorname{aff}K=3 &: \text{apply Theorem 1},[2mm]
\dim\operatorname{aff}K\le2 &: \text{apply Artifact B}.
\end{cases}
]

There is also a third repair: restate Theorem 1 for affine dimension at most three. Its proof itself does not use full affine dimension; it uses only (K\subset\mathbb R^3), the (C^{1,1}) estimate, and the covering property.

After (E=F), the leakage calculation is correct:
[
PT_j^2P-A_j^2
=============

\big((I-P)T_jP\big)^*\big((I-P)T_jP\big),
]
so all cross-compression blocks vanish.

No counterexample to the intended operator corollary exists here.

---

## 9. Finite inverse-square-energy example

**Verdict: PASS.**

For
[
g(x)=|x|^2,
]
one has
[
D_z(t)=|t-z|^2.
]

For fixed (z\in C=\overline{B(0,R)}),
[
C-z\subset B(0,2R),
]
so, with unnormalized Lebesgue measure,
[
\int_C\frac{dt}{|t-z|^2}
\le
4\pi\int_0^{2R}dr
=================

8\pi R.
]

If (\mu) is normalized Lebesgue measure and
[
|C|=\frac{4\pi R^3}{3},
]
then the normalized double integral satisfies the explicit bound
[
\iint\frac{d\mu(z)d\mu(t)}{|z-t|^2}
\le
\frac{8\pi R}{|C|}
==================

\frac{6}{R^2}<\infty.
]

The diagonal singularity is harmless because the product Lebesgue measure of the diagonal is zero.

This is a counterexample to universal inverse-square-energy divergence in three dimensions. It is **not** a POVM/PVM counterexample and does not refute uniqueness.

---

## 10. The two method obstructions

### 10a. Obstruction to the unrestricted Bregman-energy argument

**Verdict: PASS, with a necessary scope restriction.**

The dimension-one/two localization proof closes by asserting:

> Every nonzero scalar measure of the relevant type has infinite reciprocal-Bregman energy.

The volume-measure example proves that this dimension-only assertion fails in dimension three, even for
[
g(x)=|x|^2.
]

Moreover, the measure is not alien to spectral theory: normalized volume measure is a vector spectral measure of the multiplication PVM on (L^2(C,\mu)). Thus “diffuse PVM” does not restore universal divergence.

What the proposition proves is:

[
\boxed{\text{The same universal critical-energy contradiction cannot be reused in dimension three.}}
]

It does **not** prove:

* that every possible Bregman-energy proof must fail;
* that the Douglas-produced measure cannot satisfy additional constraints;
* that localization or uniqueness is false.

A refined proof could conceivably exploit more than the bare finiteness of the scalar energy. Read narrowly as an obstruction to the existing final contradiction, the claim passes.

### 10b. Obstruction to affine exposure on a diffuse curved boundary

**Verdict: PASS, again as a method obstruction only.**

For a full-dimensional strictly convex body, every proper exposed face is a singleton. For a nonatomic multiplication PVM,
[
F({z})=0.
]
The exposure identity
[
F({z})E(K\setminus{z})F({z})=0
]
therefore says only (0=0).

Consequently, pointwise affine exposure supplies:

* no annihilation between positive-measure boundary patches;
* no nonzero face compression on which to invoke the planar theorem;
* no common convex boundary domain for a relative-subgradient argument.

The sphere escapes through the extra identity
[
x_1^2+x_2^2+x_3^2=1,
]
not through exposure.

This proves the failure of the **singleton-exposure localization method**. It is not a counterexample to boundary uniqueness on a general strictly convex body. Other integrated, algebraic, or geometric mechanisms are not ruled out.

---

## 11. The statement that unrestricted dimension three remains unresolved

**Verdict: REPAIRABLE as an unqualified global claim.**

Artifact C’s exact statement is:

> The unrestricted affine-dimension-three problem remains unresolved **in this branch**.

That branch-local statement passes. The artifact proves neither the general theorem nor a counterexample and explicitly says so.

The stronger statement

[
\text{“The unrestricted dimension-three problem is globally open”}
]

is a literature-status assertion and is not established by the artifact itself. Current primary literature is consistent with it: Scherer’s planar paper states that the commutative hyperrigidity problem remained unsolved, and the 2026 spectrahedra result supplies another special class rather than an arbitrary compact-convex theorem. ([arXiv][1])

However, the exact problem here—affine moments plus one arbitrary continuous strictly convex function in affine dimension three—is a particular commutative function-system problem, not identical word-for-word to the whole commutative hyperrigidity conjecture. I found no current theorem or counterexample resolving this exact formulation, but absence from a targeted search is not a proof of open status.

The defensible formulation is:

> “The unrestricted affine-dimension-three problem is not resolved by this artifact. No resolution was located in the checked current primary sources.”

Confidence in the likely global-open status is **moderate**, not high.

---

# Cross-cutting stress tests

| Stressor                            | Audit result                                                                                                                                                                   |
| ----------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Diffuse PVMs                        | Handled in B by Scherer plus boundaryization; handled in C’s energy theorem for arbitrary scalar spectral measures; handled on the sphere by multiplicative-domain rigidity.   |
| Nonseparable Hilbert spaces         | No proof uses a countable basis, direct-integral disintegration, or separable reduction. Scalar regularity is applied vectorwise.                                              |
| Nonsmooth strictly convex functions | Fully allowed in B, the finite-face theorem, and the ellipsoid theorem. The restricted spectral-dimension theorem explicitly does not claim this generality.                   |
| Critical (O(r^{-2})) carriers       | The logarithmic divergence is valid exactly at the critical covering-content bound. Mere upper Minkowski dimension (\le2) without the uniform content bound would not suffice. |
| Curved boundaries                   | Ellipsoids pass. No theorem for arbitrary curved boundaries follows from the exposure obstruction.                                                                             |
| Overlapping exposed faces           | Harmless: PVM projections commute, and joins recover the supported union.                                                                                                      |
| Measurable boundaryization kernels  | B’s compact-fiber selector and Borel evaluation maps are sufficient; the ellipsoid kernel is explicit and Borel, including at the origin.                                      |
| Cross-summand operator terms        | Correctly eliminated by positivity once each diagonal compression is (0) or the relevant projection.                                                                           |

# Overall verdicts

## Artifact B

[
\boxed{\textbf{PASS}}
]

Confidence: **high**.

The theorem and operator corollary survive hostile testing. Diffuse extreme-boundary spectrum, nonsmooth strict convexity, nonseparable Hilbert spaces, measurable boundaryization, countably many flat faces, and cross-stratum terms are all handled correctly. Its only presentational weakness is that it calls itself a complete proof while importing P1–P5 and Scherer’s theorem rather than reproducing them.

## Artifact C v2

[
\boxed{\textbf{REPAIRABLE}}
]

Confidence: **high** for the mathematical verdict.

The restricted spectral-dimension theorem, finite exposed-face theorem, sphere rigidity, boundary ellipsoid theorem, finite-energy example, and narrowly stated method obstructions pass. The artifact needs these substantive drafting repairs:

1. Remove (F(\Sigma)=I) from the imported hypotheses of the hybrid theorem and replace it by (F(\Sigma\cup\partial K)=I).
2. Add (\dim\operatorname{aff}K=3) to the operator corollary, or explicitly use Artifact B in lower affine dimension.
3. Keep the unresolved-status claim branch-local unless a dedicated literature review certifies the global status.

No claim receives **FAIL**, and none of the identified defects provides a counterexample to the intended uniqueness theorems.

[1]: https://arxiv.org/html/2411.11709v1 "https://arxiv.org/html/2411.11709v1"
