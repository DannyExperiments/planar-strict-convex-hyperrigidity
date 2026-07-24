# Audit result

**Artifact B: PASS.** I found no counterexample to the arbitrary compact-convex planar theorem, including for curved diffuse extreme boundaries, nonsmooth strictly convex functions, nonunique representing measures, nonseparable Hilbert spaces, or countably many accumulating flat faces.

**Artifact C: the principal uniqueness theorems PASS.** There are two repairable defects and one false side claim:

1. The statement that all “compact curves” have quadratic covering growth is false under the usual topological meaning of curve. It must say **compact Lipschitz, (C^1), or finite-length rectifiable curves**.
2. The compressed-functional-calculus corollary omits the proof that the compressed joint spectrum remains in (K). The fact is true and the repair is short.
3. The finite-exposed-face theorem is valid only after Artifact B has been established. It does **not** follow from the protected polytope theorem A when an exposed face is nonpolytopal.

No POVM/PVM nonuniqueness counterexample satisfying the exact hypotheses of B or the core theorems of C was found. The finite-energy examples are counterexamples to proof mechanisms or proposed weakenings, not to uniqueness.

The protected result A is the square/polytope theorem and its supporting lemmas.  Artifact B is the planar extension.  Artifact C is the dimension-three branch. 

The sole major external input in B is genuine and exactly matches the use made of it: Scherer’s Theorem 3.8 says that (A(K)) is hyperrigid in (C(\operatorname{ex}K)) for every compact convex (K\subset\mathbb R^2). The paper has since appeared in the *Journal of Functional Analysis*. 

---

# Verdict ledger

## Artifact B

| Claim                                                        |  Verdict | Audit conclusion                                                                                                                                                                   |
| ------------------------------------------------------------ | -------: | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Arbitrary compact-convex planar uniqueness theorem           | **PASS** | The boundaryization, strict Jensen support argument, three-stratum reconstruction, and positivity gluing are valid.                                                                |
| Planar boundary decomposition                                | **PASS** | In dimension two, nonextreme boundary points are precisely the relative interiors of an at most countable collection of maximal exposed segments; (\operatorname{ex}K) is compact. |
| Compact-fiber Borel selection lemma                          | **PASS** | The lower-semicontinuous distance construction produces a Borel Cauchy sequence converging into each compact fiber.                                                                |
| Borel extreme-point representing kernel                      | **PASS** | Fibers are nonempty and compact; extremality forces (\nu_z=\delta_z) at every (z\in\operatorname{ex}K).                                                                            |
| Boundaryized POVM construction                               | **PASS** | Evaluation (\nu\mapsto \nu(S)) is Borel for Borel (S), and operator-valued countable additivity follows scalarwise.                                                                |
| Extreme-supported reconstruction lemma                       | **PASS** | Scherer identifies the boundaryization; strict Jensen equality forces the original POVM to have no nonextreme mass.                                                                |
| Interior reconstruction using theorem A’s localization lemma | **PASS** | Every invocation has the first compact set inside the common relative interior and a disjoint compact target.                                                                      |
| Flat-face reconstruction using theorem A                     | **PASS** | Affine exposure first forces support on the segment; only then is the interval theorem invoked.                                                                                    |
| Countable-stratum gluing                                     | **PASS** | Strong joins, rather than sums, correctly handle the countably many strata and eliminate all cross terms.                                                                          |
| Operator-theoretic corollary                                 | **PASS** | The affine-separation proof correctly establishes that the compressed joint spectrum lies in (K); equality of squared coordinates then yields reduction.                           |

## Artifact C

| Claim                                                     |                                           Verdict | Audit conclusion                                                                                                                                                                                                                                       |
| --------------------------------------------------------- | ------------------------------------------------: | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Quadratic Bregman bound                                   |                                          **PASS** | Convexity is needed only along segments in (K); the extension need not be convex outside (K).                                                                                                                                                          |
| Inverse-square divergence under (N(r)=O(r^{-2}))          |                                          **PASS** | The proof applies to every nonzero finite measure, including atomic, singular, and highly nonuniform measures.                                                                                                                                         |
| Spectral localization lemma                               |                                          **PASS** | The Douglas orientation and truncated reciprocal functional calculus are correct; no measurable selection of Douglas factors is used.                                                                                                                  |
| Restricted spectral-dimension Theorem 1                   |                                          **PASS** | Support localization, compact reconstruction, and compact-to-Borel extension all close.                                                                                                                                                                |
| “Compact curves have quadratic growth”                    |                     **FAIL as literally written** | A topological curve may be space filling. A continuous image of ([0,1]) can be the entire cube, whose covering growth is (r^{-3}), not (r^{-2}). The Hahn–Mazurkiewicz theorem supplies such parametrizations for Peano continua. ([ScienceDirect][1]) |
| Surface-support Corollary 1                               |                                    **REPAIRABLE** | Replace “curves” by compact Lipschitz, (C^1), or finite-length rectifiable curves.                                                                                                                                                                     |
| Finite exposed-face Theorem 2                             |                                  **PASS after B** | The theorem is valid once B is proved. It is not derivable from A alone when a face is, for example, a disk.                                                                                                                                           |
| Three-dimensional polytope boundary consequence           |                             **PASS from A alone** | Every facet is a planar polytope, so the protected result A genuinely suffices.                                                                                                                                                                        |
| Sphere affine-rigidity lemma                              |                                          **PASS** | The coordinate variances are positive and sum to zero; hence all coordinates lie in the multiplicative domain.                                                                                                                                         |
| Boundary-supported ellipsoid theorem                      |                                          **PASS** | The written boundaryization proof is valid. In fact, a stronger theorem holds: the (g)-moment is unnecessary.                                                                                                                                          |
| Hybrid ellipsoid corollary                                |                                          **PASS** | Both diagonal compressions are identified and positivity kills every off-diagonal block. Under its stated (C^{1,1}) hypotheses it is also redundant, since Theorem 1 applies directly to the finite union of the two carriers.                         |
| Operator Corollary 3                                      |                                    **REPAIRABLE** | The statement is true, but the proof must first establish (\sigma(A_1,A_2,A_3)\subseteq K); otherwise (g(A)) has not yet been justified.                                                                                                               |
| Finite inverse-square energy Proposition 4                |                                          **PASS** | Three-dimensional volume gives a genuine finite-energy measure.                                                                                                                                                                                        |
| “Energy method fails in unrestricted dimension three”     |                  **PASS as a method obstruction** | It does not produce a nonunique POVM/PVM pair.                                                                                                                                                                                                         |
| Diffuse singleton-exposure obstruction                    |                  **PASS as a method obstruction** | For a nonatomic PVM, all singleton spectral projections vanish, so singleton exposure gives only (0=0).                                                                                                                                                |
| “A general curved boundary has no analogous relation”     | **REPAIRABLE / unsupported as a universal claim** | The correct statement is only that no replacement relation is supplied by this proof. Ellipsoids themselves have one, and other geometries may as well.                                                                                                |
| Refusal to infer the unrestricted dimension-three theorem |                                          **PASS** | Nothing in these arguments establishes or refutes the unrestricted theorem.                                                                                                                                                                            |

---

# Verification of every use of protected theorem A

Artifact B uses five components of A, and every use is licensed:

1. **Common-domain localization.** In the interior reconstruction, the spectral compact set is always contained in (\operatorname{ri}K), and the target compact set is disjoint. No boundary subgradient is compared with an exterior point.

2. **Affine exposure.** A maximal planar flat face (L_n) is the zero set of a nonnegative affine function on (K), exactly matching A’s exposure lemma.

3. **Interval reconstruction.** It is invoked only after exposure proves that the compressed POVM is supported on the entire segment (L_n).

4. **Compact-to-Borel extension.** It is used on locally compact metric spaces such as (K^\circ), where scalar regularity and polarization apply without separability assumptions.

5. **Positivity.** The implications
   [
   RTR=R\Longrightarrow TR=R,
   \qquad
   RTR=0\Longrightarrow TR=0
   ]
   are used exactly as stated.

The only misleading dependency statement occurs in C’s finite-face theorem. A three-dimensional cylinder
[
K=\overline{B^2}\times[0,1]
]
has an exposed top face (\overline{B^2}\times{1}), which is not a polytope. Protected theorem A does not reconstruct that face. Artifact B does. Thus:

* general finite exposed planar faces: dependent on **B**;
* facets of a three-dimensional polytope: dependent only on **A**.

---

# Strongest counterexample attempts

## 1. Curved planar body, diffuse extreme boundary, nonsmooth (g), nonseparable (H)

Take
[
K=\overline{B^2},\qquad Z=S^1,
]
and
[
H=L^2(S^1,\sigma)\otimes\ell^2(I),
]
where (\sigma) is nonatomic and (I) is uncountable. Let
[
F(S)=M_{1_S}\otimes I_{\ell^2(I)}.
]
This is simultaneously diffuse and nonseparable.

Choose
[
g(x)=|x|^2+|x_1|.
]
It is continuous, nonsmooth on (x_1=0), and strictly convex because of the quadratic summand.

This does not break B:

* Scherer’s theorem applies on (S^1=\operatorname{ex}K) for arbitrary Hilbert spaces.
* The boundaryized POVM is therefore (F).
* Every representing measure of an interior point is nontrivial, so its strict Jensen gap is positive.
* Equality of the (g)-moments forces the original POVM to have zero interior mass.

**Verdict:** no counterexample.

---

## 2. Nonunique and deliberately nonmeasurable representing kernels

For (x_s=(s,0)), (|s|<\frac12), in the unit disk, two distinct extreme-point representations are
[
\nu_s^{\mathrm h}
=================

\frac{1+s}{2}\delta_{(1,0)}
+
\frac{1-s}{2}\delta_{(-1,0)}
]
and
[
\nu_s^{\mathrm v}
=================

\frac12\delta_{(s,\sqrt{1-s^2})}
+
\frac12\delta_{(s,-\sqrt{1-s^2})}.
]

Both have barycenter (x_s). If (A\subset(-\frac12,\frac12)) is non-Borel and one chooses (\nu_s^{\mathrm h}) on (A) and (\nu_s^{\mathrm v}) off (A), the resulting kernel is nonmeasurable: evaluation at ({(1,0)}) detects (A).

This only proves that **bad choices exist**. B proves that at least one Borel choice exists using a closed compact-fiber relation. Moreover, the conclusion is independent of which Borel selector is chosen:

* every boundaryization has the same affine moments;
* Scherer forces every such boundaryization to equal the same (F);
* every nontrivial representing measure has a positive strict Jensen gap.

**Verdict:** no counterexample; nonuniqueness and arbitrary nonmeasurable choices are irrelevant.

---

## 3. (C^1) extensions that are nonconvex outside (K)

Let
[
K=[-1,1]^3,
\qquad
g(x)=|x|^2\quad (x\in K),
]
and extend it to a neighborhood by
[
G(x)
====

|x|^2-M(x_1-1)_+^4.
]
For large (M), (G) is nonconvex immediately outside the right face of (K). On every bounded neighborhood its gradient is Lipschitz, while (G|_K=g).

The proof of C’s Bregman lemma still works. For (z,t\in K),
[
\phi(s)=G(z+s(t-z))
]
is convex because its entire segment lies in (K), where (G=g). Thus
[
D_z(t)
======

g(t)-g(z)-\langle\nabla G(z),t-z\rangle
\ge0.
]
The upper bound
[
D_z(t)\le\frac L2|t-z|^2
]
uses only the Lipschitz gradient along that same segment. Convexity outside (K) never enters.

**Verdict:** C’s theorem survives.

---

## 4. Singular measures at exact critical covering growth

Let (\Sigma) satisfy
[
N_\Sigma(r)\le Cr^{-2}.
]
For any finite nonzero (\mu) supported on (\Sigma), every (r)-cover can be partitioned into at most (N_\Sigma(r)) cells (Q_j) of diameter at most (r). Therefore
[
(\mu\times\mu){|z-t|\le r}
\ge
\sum_j\mu(Q_j)^2
\ge
\frac{\mu(\Sigma)^2}{N_\Sigma(r)}
\ge c r^2.
]

This is minimized when the mass is distributed as uniformly as possible among the cells. Atomicity, singular concentration, or multifractal behavior only increases the lower bound.

Consequently
[
I_2(\mu)
========

2\int_0^\infty
r^{-3}
(\mu\times\mu){|z-t|\le r},dr
=============================

\infty.
]

**Verdict:** no singular measure can evade the exact (O(r^{-2})) hypothesis.

---

## 5. Logarithmic and nonuniform Minkowski behavior

The exact cover argument actually gives the more general lower bound
[
I_2(\mu)
\ge
2\mu(\Sigma)^2
\int_0^{r_0}
\frac{dr}{r^3N_\Sigma(r)}.
]

If
[
N_\Sigma(r)
\lesssim
r^{-2}L(1/r),
]
then
[
I_2(\mu)
\gtrsim
\int_0
\frac{dr}{rL(1/r)}.
]

Hence:

* (L(1/r)=\log(1/r)): still divergent;
* (L(1/r)=(\log(1/r))^p), (p>1): the cover argument no longer forces divergence.

This loss is real, not merely a weakness in the estimate.

Choose (p>1) and a rapidly decreasing sequence
[
a_n=\exp(-2^{n/p}),
]
discarding finitely many terms so that each (a_n) dominates the remaining tail. Define
[
Z_p
===

\left{
\sum_{n\ge1}\varepsilon_na_n:
\varepsilon_n\in{0,1}
\right},
]
with its symmetric Bernoulli measure (\nu). If two independent points first differ at digit (n), their distance is comparable to (a_n), while that event has probability (2^{-n}). Therefore
[
\iint
\log\frac{e}{|s-t|}
,d\nu(s)d\nu(t)
\lesssim
\sum_{n\ge1}2^{-n}2^{n/p}
<\infty.
]

At the same time,
[
N_{Z_p}(r)
\lesssim
(\log(e/r))^p.
]

Set
[
\Sigma=[0,1]^2\times Z_p,
\qquad
\mu=\mathcal L^2|*{[0,1]^2}\otimes\nu.
]
Then
[
N*\Sigma(r)
\lesssim
r^{-2}(\log(e/r))^p,
]
so (\Sigma) has upper Minkowski dimension exactly (2), but
[
\iint_{\Sigma\times\Sigma}
\frac{d\mu(x)d\mu(y)}{|x-y|^2}
<\infty.
]
Indeed, after fixing the transverse separation (\delta=|s-t|), integration in the two planar coordinates is bounded by
[
C\log\frac e\delta,
]
and the logarithmic energy of (\nu) is finite.

This (\mu) is singular with respect to three-dimensional volume.

**Verdict:** this is a genuine counterexample to replacing quadratic covering growth by “upper Minkowski dimension at most two.” It is only a counterexample to the energy method or weakened hypothesis, not to POVM/PVM uniqueness.

---

## 6. Overlapping exposed faces

Let two facets of a cube share an edge, and let (F) have diffuse spectral mass on that common edge. Then
[
F(L_1)F(L_2)=F(L_1\cap L_2)
]
can be nonzero.

The proof does not add the projections (F(L_j)); it takes their joins:
[
\bigvee_jF(S\cap L_j)
=====================

F!\left(S\cap\bigcup_jL_j\right).
]
Likewise,
[
\bigvee_jF(L_j\setminus S)
==========================

F!\left((K\setminus S)\cap\bigcup_jL_j\right).
]
Thus overlapping mass is counted once through the PVM union law.

**Verdict:** no counterexample.

---

## 7. Diffuse PVMs on (S^2) or an ellipsoid

Take
[
H=L^2(S^2,\sigma)\otimes\ell^2(I),
\qquad
F(S)=M_{1_S}\otimes I,
]
with nonatomic (\sigma). Every singleton projection vanishes, so affine singleton exposure is completely vacuous.

Nevertheless sphere affine rigidity survives because it does not use singleton projections. It uses the global identity
[
x_1^2+x_2^2+x_3^2=1.
]

After an invertible affine transformation, the same applies to every ellipsoid.

**Verdict:** this falsifies the singleton-exposure proof method, not uniqueness.

---

## 8. Correct coordinate moments but different higher moments

Coordinate moments alone do not determine an arbitrary POVM/PVM pair.

On (K=[-1,1]), let
[
F=\delta_0,
\qquad
E=\frac12\delta_{-1}+\frac12\delta_1.
]
Here (F) is a scalar PVM and (E) a scalar POVM. They agree on constants and the coordinate:
[
\int t,dE=\int t,dF=0,
]
but
[
\int t^2,dE=1,
\qquad
\int t^2,dF=0.
]

This is an actual nonuniqueness example for affine moments alone. It does not satisfy the strictly convex moment equality: strict Jensen gives
[
\int g,dE>g(0)=\int g,dF.
]

On (S^2), by contrast, a PVM comparator makes this construction impossible. The sphere identity forces all coordinate variances to vanish, so all higher moments are fixed.

**Verdict:** the PVM and boundary relation are essential; the sphere lemma survives.

---

## 9. Cross terms between hybrid spectral summands

Let
[
T=E(S),\qquad 0\le T\le I.
]
Suppose the diagonal reconstruction identifies the (F(S))-block as the identity and the (F(K\setminus S))-block as zero.

Writing (Q=F(S)) and (Q^\perp=F(K\setminus S)),
[
QTQ=Q
]
implies
[
Q(I-T)Q=0.
]
Since (I-T\ge0),
[
(I-T)Q=0,
\qquad
TQ=Q.
]
Similarly,
[
Q^\perp TQ^\perp=0
]
and (T\ge0) imply
[
TQ^\perp=0.
]
Therefore
[
T=Q.
]

A formal block matrix
[
\begin{pmatrix}
I&X\
X^*&0
\end{pmatrix}
]
cannot be positive unless (X=0).

**Verdict:** hybrid cross terms cannot survive positivity.

---

## 10. Could the compressed joint spectrum leave (K)?

For convex (K), no.

If (\ell) is affine and nonnegative on (K), then
[
\ell(T_1,T_2,T_3)\ge0.
]
Compression gives
[
\ell(A_1,A_2,A_3)
=================

P\ell(T_1,T_2,T_3)P|_{PH}
\ge0.
]
If a joint spectral point (\lambda) of (A) lay outside (K), affine separation would give an affine (\ell) with
[
\ell|_K\ge0,\qquad \ell(\lambda)<0,
]
contradicting the positivity of (\ell(A)).

Convexity is indispensable. For
[
K={-1,1},
\qquad
T=\begin{pmatrix}-1&0\0&1\end{pmatrix},
]
compression to the span of ((1,1)) gives (A=0\notin K).

**Verdict:** C’s operator corollary is true, but its proof must insert the convex-separation argument before invoking (g(A)) or Theorem 1.

---

# Independent reconstruction of the six requested arguments

## 1. Planar boundaryization and Jensen support

Let
[
Z=\operatorname{ex}K
]
for a compact two-dimensional convex body.

### Step 1: planar geometry

Every nonextreme (x\in\partial K) belongs to the relative interior of a nondegenerate exposed segment. Maximal such segment interiors are pairwise disjoint relatively open subsets of the second-countable space (\partial K), hence form an at most countable family
[
U_1,U_2,\ldots.
]
Their endpoints are extreme, and
[
K
=

K^\circ;\dot\cup;Z;\dot\cup;\bigdotcup_nU_n.
]
In particular, (Z) is compact.

### Step 2: measurable extreme representation

Let (\mathcal P(Z)) carry the weak topology and define
[
b(\nu)=\int_Zz,d\nu(z).
]
The relation
[
\mathcal R={(x,\nu):b(\nu)=x}
\subseteq K\times\mathcal P(Z)
]
is compact with nonempty compact fibers.

A Borel selector can be constructed directly. For a dense sequence (q_j) in (\mathcal P(Z)), the functions
[
d_j(x)=\operatorname{dist}(q_j,\mathcal R_x)
]
are lower semicontinuous. Successively choose the first (q_j) within (2^{-n}) of the fiber and within a controlled distance of the preceding choice. The resulting Borel sequence is uniformly Cauchy and converges into (\mathcal R_x).

Thus there is a Borel kernel
[
x\mapsto\nu_x,\qquad b(\nu_x)=x.
]
If (z\in Z), extremality forces
[
\nu_z=\delta_z.
]

### Step 3: boundaryize a POVM

For a normalized POVM (G) on (K), set
[
\widehat G(S)
=============

\int_K\nu_x(S),dG(x),
\qquad S\subseteq Z.
]
For affine (\ell),
[
\int_Z\ell,d\widehat G
======================

# \int_K\left(\int_Z\ell(z),d\nu_x(z)\right)dG(x)

\int_K\ell(x),dG(x).
]

Suppose (N) is a PVM supported on (Z) with the same affine moments. The maps
[
\Psi(h)=\int_Zh,d\widehat G,
\qquad
\rho(h)=\int_Zh,dN
]
are respectively UCP and a unital *-representation. They agree on (A(K)|_Z), so Scherer hyperrigidity gives
[
\widehat G=N.
]

### Step 4: strict Jensen support

Define
[
\widetilde g(x)
===============

\int_Zg(z),d\nu_x(z),
\qquad
h(x)=\widetilde g(x)-g(x).
]
Jensen gives (h\ge0).

If (x\notin Z), then (\nu_x) is not a point mass. For independent (S,T\sim\nu_x),
[
g!\left(\frac{S+T}{2}\right)
<
\frac{g(S)+g(T)}2
]
on the positive-probability event (S\ne T). Integrating and then applying Jensen once more gives
[
g(x)<\int g,d\nu_x.
]
Hence
[
h(x)=0\quad\Longleftrightarrow\quad x\in Z.
]

The (g)-moment equality and (\widehat G=N) imply
[
\int_Kh,dG=0.
]
For
[
A_n={h\ge1/n},
]
positivity gives
[
\frac1nG(A_n)\le\int h,dG=0.
]
Thus (G(A_n)=0), and since
[
K\setminus Z=\bigcup_nA_n,
]
(G) is supported on (Z). On (Z), (\nu_z=\delta_z), so
[
G=\widehat G=N.
]

### Step 5: reconstruct all spectral strata

* Interior: theorem A’s common-domain localization.
* Flat-face interiors: affine exposure followed by theorem A’s interval reconstruction.
* Extreme stratum: the boundaryization argument above.

For each Borel (S), positivity then shows (E(S)) is the identity on (F(S)H) and zero on (F(K\setminus S)H). Hence (E(S)=F(S)).

This reconstructs Artifact B independently except for Scherer’s verified hyperrigidity theorem.

---

## 2. Critical-covering-growth energy contradiction

Let (\mu\ne0) be supported on (C\subseteq\Sigma), and write (m=\mu(C)).

If (C) is covered by
[
N(r)\le Cr^{-2}
]
sets of diameter at most (r), make them into a Borel partition (Q_1,\ldots,Q_{N(r)}). Then
[
\begin{aligned}
(\mu\times\mu){|z-t|\le r}
&\ge\sum_j\mu(Q_j)^2\
&\ge\frac{m^2}{N(r)}\
&\ge\frac{m^2}{C}r^2.
\end{aligned}
]
Layer cake gives
[
\begin{aligned}
\iint\frac{d\mu(z)d\mu(t)}{|z-t|^2}
&=
2\int_0^\infty
r^{-3}
(\mu\times\mu){|z-t|\le r},dr\
&\ge
\frac{2m^2}{C}\int_0^{r_0}\frac{dr}{r}\
&=\infty.
\end{aligned}
]

For a (C^{1,1}) extension (G), convexity of (g=G|_K) along segments gives
[
D_z(t)
======

g(t)-g(z)-\langle\nabla G(z),t-z\rangle
\ge0,
]
and Lipschitz continuity of (\nabla G) gives
[
D_z(t)\le\frac L2|t-z|^2.
]
Therefore
[
\iint\frac{d\mu(z)d\mu(t)}{D_z(t)}=\infty.
]

For localization, suppose
[
T=F(C)E(J)F(C)\ne0.
]
Uniform Bregman separation gives (D_z\ge c1_J), hence
[
cT\le M_z,
\qquad
M_z=F(C)\left(\int D_z,dF\right)F(C).
]
Choose (u) with (\eta=T^{1/2}u\ne0). Douglas factorization yields, separately for each (z),
[
\sqrt c,T^{1/2}=M_z^{1/2}C_z,
\qquad |C_z|\le1.
]
With
[
\mu(S)=|F(S)\eta|^2,
]
truncated inverses (h_n(s)=\min(n,s^{-1})) give
[
\int_C h_n(D_z(t)),d\mu(t)
\le\frac{|u|^2}{c}.
]
Monotone convergence yields
[
\int_C\frac{d\mu(t)}{D_z(t)}
\le\frac{|u|^2}{c}
]
for every (z). Integrating in (z) gives finite reciprocal Bregman energy, contradicting the divergence above.

No measurability of (z\mapsto C_z) is involved.

---

## 3. Sphere affine rigidity through the multiplicative domain

Let
[
\Psi(h)=\int_{S^2}h,dM,
\qquad
\rho(h)=\int_{S^2}h,dN,
]
where (M) is a POVM, (N) a PVM, and
[
A_i=\Psi(x_i)=\rho(x_i).
]

Since (\Psi) is UCP, Kadison’s inequality gives
[
\Delta_i
========

\Psi(x_i^2)-A_i^2
\ge0.
]
But
[
\sum_i\Psi(x_i^2)
=================

# \Psi(1)

I
]
and, because (\rho) is multiplicative,
[
\sum_iA_i^2
===========

# \rho!\left(\sum_ix_i^2\right)

I.
]
Thus
[
\sum_i\Delta_i=0.
]
Each (\Delta_i) is positive, so every (\Delta_i=0).

Equality in Kadison’s inequality places every coordinate (x_i) in the multiplicative domain of (\Psi):
[
\Psi(hx_i)=\Psi(h)\Psi(x_i)
]
for all (h\in C(S^2)).

The coordinates and constants generate a uniformly dense *-subalgebra of (C(S^2)). Therefore (\Psi) is multiplicative on all of (C(S^2)) and agrees with (\rho):
[
M=N.
]

This also explains why a POVM with the right coordinates but different higher moments cannot coexist with a PVM comparator on (S^2).

---

## 4. Ellipsoid boundaryization

After an invertible affine change of variables, let
[
K=\overline{B^3}.
]

For (x=ru\ne0), define
[
\nu_x
=====

\frac{1+r}{2}\delta_u
+
\frac{1-r}{2}\delta_{-u},
]
and choose any antipodal half-half measure at (x=0). Then
[
\int z,d\nu_x(z)=x,
\qquad
\nu_x=\delta_x\quad(x\in S^2).
]

Boundaryize (E):
[
M(S)=\int_K\nu_x(S),dE(x).
]
The affine moments of (M) equal those of (E), hence those of the boundary-supported PVM (F). Sphere rigidity gives
[
M=F.
]

Define
[
\widetilde g(x)=\int_{S^2}g(z),d\nu_x(z).
]
For (x\in B^3), (x) is a proper convex combination of two distinct antipodal points, so strict convexity gives
[
\widetilde g(x)>g(x).
]
On (S^2),
[
\widetilde g(x)=g(x).
]

The moment equality gives
[
\int_K(\widetilde g-g),dE=0.
]
The nonnegative integrand vanishes exactly on (S^2), so (E(B^3)=0). Once (E) is supported on (S^2), its boundaryization is itself:
[
E=M=F.
]

### Stronger cross-check

The (g)-moment is actually unnecessary. With (\Psi) associated to (E),
[
\sum_iA_i^2=I
]
because (F) is sphere-supported, while
[
\sum_i\Psi(x_i^2)
=================

\Psi(|x|^2)
\le I
]
because (|x|^2\le1) on the ball. Kadison gives the reverse inequality termwise:
[
\Psi(x_i^2)\ge A_i^2.
]
Therefore equality holds throughout, every coordinate lies in the multiplicative domain, and (E=F).

The same argument transfers to an ellipsoid by affine normalization.

---

## 5. Hybrid gluing

Let
[
R_1=F(\Sigma),
\qquad
R_2=F(\partial K),
\qquad
R_1+R_2=I.
]
After applying the appropriate theorem on each range,
[
R_iE(S)R_i=R_iF(S)R_i,\qquad i=1,2.
]

Set
[
Q_i=F(S)R_i,
\qquad
P_i=F(K\setminus S)R_i.
]
Then
[
Q_iE(S)Q_i=Q_i,
\qquad
P_iE(S)P_i=0.
]
Since (0\le E(S)\le I),
[
E(S)Q_i=Q_i,
\qquad
E(S)P_i=0.
]

Taking joins,
[
Q_1\vee Q_2=F(S),
\qquad
P_1\vee P_2=F(K\setminus S).
]
Thus (E(S)) is the identity on (F(S)H) and zero on its orthogonal complement:
[
E(S)=F(S).
]

This argument is valid for nonseparable Hilbert spaces and does not assume the two spectral summands are atomic.

---

## 6. Finite-energy obstruction in dimension three

Let (\mu) be normalized volume on (C=\overline{B(0,R)}\subset\mathbb R^3). For fixed (z\in C),
[
C-z\subseteq B(0,2R),
]
so
[
\int_C\frac{dt}{|t-z|^2}
\le
\int_{B(0,2R)}\frac{du}{|u|^2}.
]
In spherical coordinates,
[
\int_{B(0,2R)}\frac{du}{|u|^2}
==============================

# 4\pi\int_0^{2R}dr

8\pi R.
]
After normalizing and integrating in (z),
[
\iint\frac{d\mu(z)d\mu(t)}{|z-t|^2}<\infty.
]

For
[
g(x)=|x|^2,
]
the Bregman defect is exactly
[
D_z(t)=|t-z|^2.
]
Thus a nonzero measure with finite reciprocal Bregman energy genuinely exists in dimension three.

This says only that the energy contradiction cannot be universal. It does not produce (E\ne F).

Indeed, for quadratic (g), uniqueness holds in every finite dimension by a separate multiplicative-domain argument:
[
\sum_i\bigl(\Psi(x_i^2)-\Psi(x_i)^2\bigr)=0,
]
with every summand positive. Hence all coordinates are multiplicative and the POVM equals the PVM.

---

# Exact repairs

### C, Corollary 1

Replace:

> compact curves

with:

> compact Lipschitz curves, compact (C^1) curves, or compact rectifiable curves of finite length.

Then the covering number is (O(r^{-1})), hence certainly (O(r^{-2})).

### C, finite exposed-face theorem

Replace the dependency sentence by:

> This theorem uses Artifact B, the arbitrary compact-convex planar theorem. If one wishes to rely only on protected theorem A, each exposed face must additionally be a planar polytope.

### C, operator Corollary 3

Insert before defining (g(A_1,A_2,A_3)):

> For every affine (\ell\ge0) on (K), one has (\ell(A)\ge0). By affine separation, the joint spectrum of (A) is contained in (K).

Then intersect the stated carrier with (K), if necessary.

### C, diffuse curved-boundary obstruction

Replace:

> A general curved boundary has no analogous relation available from affine moments alone.

with:

> The affine-exposure argument supplies no nontrivial patch localization for a diffuse PVM on a strictly convex boundary. Any replacement would require additional geometry not developed here.

---

# Final classification

* **Artifact B overall:** **PASS**.
* **Artifact C restricted spectral-dimension theorem:** **PASS**.
* **Artifact C finite exposed-face theorem:** **PASS after B; not from A alone**.
* **Artifact C sphere and ellipsoid theorems:** **PASS**, with the ellipsoid theorem stronger than stated.
* **Artifact C hybrid gluing:** **PASS**.
* **Artifact C operator corollary:** **REPAIRABLE**.
* **Artifact C compact-curve claim:** **FAIL literally; REPAIRABLE by adding Lipschitz/rectifiable regularity**.
* **Critical-covering energy obstruction:** **PASS and essentially sharp**.
* **Three-dimensional volume-energy example:** **PASS as a proof-method obstruction only**.
* **Diffuse singleton-exposure example:** **PASS as a proof-method obstruction only**.
* **Actual POVM/PVM uniqueness counterexample under the exact hypotheses of B or C:** **none obtained**.
* **Unrestricted dimension-three theorem:** **not inferred in either direction**.

**Confidence:** high on the mathematical verdicts; moderate only on the intended meaning of the unqualified word “curve.”

[1]: https://www.sciencedirect.com/science/article/abs/pii/S016686412300130X?utm_source=chatgpt.com "Borel measurable Hahn-Mazurkiewicz theorem"
