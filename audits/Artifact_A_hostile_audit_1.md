# Overall assessment

I found no mathematical gap in the square theorem, the two-dimensional localization mechanism, the interval reconstruction, or the affine-dimension-(\le 2) polytope reconstruction. The proof survives the requested stress tests: nonsmooth strictly convex functions, diffuse spectral measures, nonseparable Hilbert spaces, spectral mass concentrated on edges or vertices, and arbitrary compact interior spectral subsets.

References below use the attachment’s lemma numbers, equation labels, and line numbers. 

**Square theorem:** PASS.
**POVM polytope extension:** PASS.
**Operator-theoretic polytope corollary:** PASS under the standard operator-algebra convention that the commuting self-adjoint tuple is bounded and possesses its joint continuous functional calculus.

**Confidence:** high.

---

# I. Supporting lemmas

## Lemma 1 — PASS

**Passage assessed:** lines 41–86, especially:

[
RTR=0\Longrightarrow TR=RT=0,
]

[
0\le T\le I,\ RTR=R\Longrightarrow TR=RT=R,
]

and annihilation of a finite projection join.

**Justification.**

The first implication follows from

[
RTR=(T^{1/2}R)^*(T^{1/2}R)=0.
]

The second is the first applied to (I-T). For the third, (TR_j=0) implies (T^{1/2}R_j=0), so (T^{1/2}) vanishes on the closed span of the ranges of the (R_j), which is the range of their join.

Every later application respects the finite-family hypothesis: two endpoint projections, four square edges, or finitely many polygon edges.

**Failure status:** none.

---

## Lemma 2 — PASS

**Passage assessed:** lines 90–122, monotonicity, strong continuity from below, and order preservation of POVM integration.

**Justification.**

For a normalized POVM, (0\le E(S_n)\le I). An increasing bounded sequence of positive operators has a strong limit. Scalar countable additivity identifies its quadratic form with that of (E(S)). Equivalently, if (T) is the weak limit, then

[
|(T-E(S_n))^{1/2}\xi|^2
=======================

\langle (T-E(S_n))\xi,\xi\rangle\to0.
]

The order statement for bounded real Borel functions follows first for simple functions and then by monotone approximation.

**Failure status:** none.

---

## Lemma 3 — PASS

**Passage assessed:** lines 126–341:

> For compact (C\subset\operatorname{int}K), the common-domain subdifferentials (\partial_Kg(z)) are nonempty, uniformly bounded, have a compact graph, and admit a bounded Borel selector.

### Existence

The supporting-hyperplane argument is correct. At ((z,g(z))), a supporting normal ((q,\alpha)) to the epigraph must satisfy (\alpha\ge0), because the epigraph is unbounded in the positive vertical direction. If (\alpha=0), then

[
\langle q,t-z\rangle\ge0\qquad(t\in K),
]

which forces (q=0) because (z) is an interior point. Thus (\alpha>0), and (p=-q/\alpha) is a common-domain subgradient.

This argument does not require differentiability.

### Uniform boundedness

Because (C\Subset\operatorname{int}K), there is a single (r>0) such that

[
z\pm ru\in K
]

for every (z\in C) and unit (u). The two subgradient inequalities give

[
|\langle p,u\rangle|
\le \frac{\operatorname{osc}_K g}{r}.
]

Taking the supremum over unit vectors gives a uniform bound on (|p|).

### Compactness

The graph is bounded. It is closed because the common-domain inequalities survive passage to the limit. Finite-dimensional closed boundedness then gives compactness.

### Borel selection

The explicit construction is valid.

For a fixed dense point (q_m),

[
d_m(z)=\operatorname{dist}(q_m,\partial_Kg(z))
]

is lower semicontinuous. The compact graph guarantees convergent subsequences of minimizing points in the fibers. The “first (q_m)” construction is Borel because the admissibility conditions are Borel and are indexed by a countable family. The successive selections satisfy a summable uniform Cauchy estimate, so their pointwise limit is Borel and lies in the closed fiber.

The countable dense set is in finite-dimensional (\mathbb R^d), not in the Hilbert space. No separability of (H) is being assumed.

### Boundary counterexample showing the hypothesis is necessary

The interior hypothesis cannot be removed. On (K=[0,1]), let

[
g(t)=-\sqrt t.
]

This is continuous and strictly convex, but there is no finite common-domain subgradient at (0): the inequality

[
-\sqrt t\ge pt
]

would require (p\le-1/\sqrt t) for all small (t>0), which is impossible for finite (p).

The manuscript correctly avoids boundary subgradients.

**Failure status:** none.

---

## Lemma 4 — PASS

**Passage assessed:** lines 345–395:

[
g(t)-g(z)-\langle p,t-z\rangle\ge c>0
]

uniformly for (z\in C), (p\in\partial_Kg(z)), and (t\in J), where (C) and (J) are disjoint compact sets and (C\Subset\operatorname{int}K).

**Justification.**

The Bregman defect is nonnegative by the subgradient inequality. If it vanished at (t\ne z), then for every (0<\lambda<1), the subgradient lower bound and convexity upper bound would coincide at

[
(1-\lambda)z+\lambda t.
]

That would make (g) affine on the segment ([z,t]), contradicting strict convexity.

The defect is continuous in ((z,p,t)), and the parameter space

[
\Gamma_C\times J
]

is compact. Since it contains no zero, its minimum is positive.

The compactness and disjointness hypotheses are essential. For (g(t)=t^2), if (J) approaches (C={0}), the Bregman defect (t^2) has infimum zero.

**Failure status:** none.

---

## Lemma 5 — PASS

**Passage assessed:** lines 399–448:

[
SS^*\le TT^*\quad\Longrightarrow\quad S=TC
]

for a contraction (C).

**Justification.**

The map

[
C^*(T^*\xi)=S^*\xi
]

is well defined because (\ker T^*\subseteq\ker S^*). The norm inequality follows directly from (SS^*\le TT^*). Extension by continuity and then by zero on the orthogonal complement gives a contraction satisfying (S^*=C^*T^*).

The orientation is exactly the one later required.

### Why the opposite orientation would be false

From (T_0\le M), one cannot generally conclude

[
M^{1/2}=T_0^{1/2}C.
]

For example, with

[
T_0=
\begin{pmatrix}
1&0\0&0
\end{pmatrix},
\qquad
M=I,
]

one has (T_0\le M), but (I=T_0^{1/2}C) is impossible because the right-hand side has one-dimensional range. The manuscript uses the correct range inclusion:

[
T_0^{1/2}=M^{1/2}C.
]

**Failure status:** none.

---

## Lemma 6 — PASS

**Passage assessed:** lines 452–684, the critical Bregman-energy divergence:

[
\iint_{C\times C}\frac{d\mu(t),d\mu(z)}{D_z(t)}=+\infty
]

for (d\le2).

### Joint measurability

Because (p:C\to\mathbb R^d) is Borel and (g) is continuous,

[
(z,t)\mapsto
g(t)-g(z)-\langle p(z),t-z\rangle
]

is jointly Borel. Its reciprocal, with value (+\infty) at zero, is an extended nonnegative Borel function. Tonelli therefore applies.

### Bregman-to-Riesz comparison

For (p(z)\in\partial g(z)) and (p(t)\in\partial g(t)),

[
D_z(t)+D_t(z)
=============

\langle p(t)-p(z),t-z\rangle.
]

Since (D_t(z)\ge0),

[
D_z(t)
\le
|p(t)-p(z)|,|t-z|
\le
\frac12\left(
|p(t)-p(z)|^2+|t-z|^2
\right).
]

For

[
G(z)=(z,p(z)),
]

this gives

[
\frac1{D_z(t)}
\ge
\frac{2}{|G(t)-G(z)|^2}.
]

This remains valid in the extended sense on the diagonal.

### Minty parametrization

Define

[
U(z)=z+p(z),\qquad W(z)=z-p(z).
]

Subgradient monotonicity yields

[
|W(z)-W(t)|\le|U(z)-U(t)|.
]

Consequently, (U) is injective: (U(z)=U(t)) forces (W(z)=W(t)), and hence (z=t).

Moreover,

[
\begin{aligned}
|G(z)-G(t)|^2
&=\frac12\bigl(
|U(z)-U(t)|^2+
|W(z)-W(t)|^2
\bigr)\
&\le |U(z)-U(t)|^2.
\end{aligned}
]

Thus, although (G(C)\subset\mathbb R^{2d}), it has a covering bound controlled by the (d)-dimensional set (U(C)).

### Covering estimate

A bounded cube in (\mathbb R^d) can be partitioned into at most

[
M r^{-d}
]

Borel cubes of diameter at most (r). Pulling these cubes back through the Borel map (U) gives a finite Borel partition (C=\dot\bigcup C_j). Points in the same cell satisfy

[
|G(z)-G(t)|\le r.
]

Cauchy–Schwarz gives

[
\sum_j\mu(C_j)^2
\ge
\frac{\mu(C)^2}{N(r)}
\ge c_0r^d.
]

Hence

[
(\mu\times\mu){|G(z)-G(t)|\le r}
\ge c_0r^d.
]

### Critical divergence

Layer cake gives

[
\iint\frac{d\mu(z)d\mu(t)}
{|G(z)-G(t)|^2}
===============

2\int_0^\infty
r^{-3}
(\mu\times\mu){|G(z)-G(t)|\le r},dr.
]

The lower bound produces

[
2c_0\int_0^{r_0}r^{d-3},dr,
]

which diverges for (d=1,2).

Atoms cause no difficulty: the diagonal already gives infinite energy. Diffuse measures are exactly what the covering argument handles.

### Sharp scope of the dimensional argument

The statement would be false in dimension (3). Take

[
g(x)=\frac12|x|^2,\qquad p(x)=x,
]

on a three-dimensional cube, and let (\mu) be Lebesgue measure. Then

[
D_z(t)=\frac12|t-z|^2,
]

while locally

[
\int_0^\varepsilon r^{2}\frac1{r^2},dr<\infty.
]

Thus the critical energy can be finite in dimension (3). The manuscript’s (d\le2) restriction is exact for this argument.

**Failure status:** none.

---

## Lemma 7 — PASS

**Passage assessed:** lines 688–922:

[
F(C)E(J)F(C)=0
]

for compact disjoint (C\Subset\operatorname{ri}K) and (J\subset K).

This is the critical lemma. It is correct.

## Independent derivation of the Douglas/energy localization argument

Let

[
R=F(C),\qquad T=RE(J)R.
]

For each (z\in C), choose a common-domain subgradient and put

[
D_z(t)=g(t)-g(z)-\langle p(z),t-z\rangle.
]

Uniform Bregman separation gives a single (c>0) with

[
D_z\ge c1_J.
]

Consequently,

[
cE(J)\le\int D_z,dE=\int D_z,dF,
]

where the equality follows because (D_z) is (g) plus an affine function. Compression by (R) gives

[
cT\le M_z,
\qquad
M_z:=R\left(\int D_z,dF\right)R.
\tag{1}
]

Assume (T\ne0), and choose (u\in RH) with

[
\eta=T^{1/2}u\ne0.
]

Applying Douglas to

[
\sqrt c,T^{1/2}
\quad\text{and}\quad
M_z^{1/2}
]

in (1) gives a contraction (C_z) satisfying

[
\sqrt c,T^{1/2}=M_z^{1/2}C_z.
]

Set (v_z=C_zu). Then

[
\sqrt c,\eta=M_z^{1/2}v_z,
\qquad
|v_z|\le|u|.
\tag{2}
]

Now define

[
\mu(S)=\langle F(S)\eta,\eta\rangle
=|F(S)\eta|^2.
]

Because (\eta\in F(C)H),

[
\mu(K\setminus C)=0,\qquad
\mu(C)=|\eta|^2>0.
]

### Exact spectral-calculus identity

On (RH), define the restricted PVM

[
F_C(S)=F(S\cap C)|_{RH}.
]

Because (R=F(C)) commutes with the entire (F)-functional calculus,

[
M_z=\int_C D_z(t),dF_C(t).
]

Therefore, for any bounded Borel (h),

[
h(M_z)=\int_C h(D_z(t)),dF_C(t).
]

In particular,

[
\langle h(M_z)\eta,\eta\rangle
==============================

\int_C h(D_z(t)),d\mu(t).
\tag{3}
]

This is the exact reason the manuscript’s identity involving (h_n(M_z)) is valid. It would generally be false for compression by an arbitrary projection; it works because (R) is itself a spectral projection of (F).

Take

[
h_n(s)=
\begin{cases}
\min{n,s^{-1}},&s>0,\
n,&s=0.
\end{cases}
]

Then (0\le s h_n(s)\le1). From (2) and (3),

[
\begin{aligned}
\int_C h_n(D_z(t)),d\mu(t)
&=\langle h_n(M_z)\eta,\eta\rangle\
&=\frac1c
\langle
M_z^{1/2}h_n(M_z)M_z^{1/2}v_z,v_z
\rangle\
&=\frac1c
\langle M_zh_n(M_z)v_z,v_z\rangle\
&\le\frac{|u|^2}{c}.
\end{aligned}
]

Monotone convergence yields

[
\int_C\frac{d\mu(t)}{D_z(t)}
\le\frac{|u|^2}{c}
\qquad(z\in C).
\tag{4}
]

No measurable selection (z\mapsto C_z) is involved. The factors are used pointwise only. The measurable object is the left side of (4), because ((z,t)\mapsto1/D_z(t)) is jointly Borel.

Integrating (4) in (z) and using Tonelli gives finite double Bregman energy, contradicting Lemma 6. Therefore (T=0).

This independently verifies:

* the Douglas orientation;
* the truncated reciprocal estimate;
* support of the scalar spectral measure;
* the (h_n(M_z)) identity;
* joint measurability;
* the fact that no measurable Douglas factor is required.

### Counterexample pressure test: strict convexity is essential

If strict convexity is removed, localization fails even scalarly. Let (K=[0,1]), let (F=\delta_{1/2}), let

[
E=\tfrac12\delta_0+\tfrac12\delta_1,
]

and take (g\equiv0). Constants, first moments, and (g)-moments agree, but for (C={1/2}) and (J={0}),

[
F(C)E(J)F(C)=\frac12\ne0.
]

**Failure status:** none.

---

## Lemma 8 — PASS

**Passage assessed:** lines 926–977:

[
F(L)E(K\setminus L)F(L)=0
]

when (L={r=0}), (r\ge0), and the (r)-moments agree.

**Justification.**

For

[
U_n={r\ge1/n},
]

one has (1_{U_n}\le nr), hence

[
E(U_n)\le n\int r,dE=n\int r,dF.
]

Compressing by (F(L)) kills the last integral because (r=0) on (L). Since (U_n\uparrow K\setminus L), strong continuity from below finishes the proof.

This lemma is valid for arbitrary continuous nonnegative (r), not merely affine (r).

**Failure status:** none.

---

## Lemma 9 — PASS

**Passage assessed:** lines 981–1050, extension from compact sets to all Borel sets and polarization.

**Justification.**

For each vector (\xi), diagonal scalarizations are finite regular Borel measures. Every open set in a locally compact (\sigma)-compact metric space is an increasing union of compact sets of the displayed type. Thus equality on compact sets gives equality on open sets.

The agreement class is then a Dynkin system containing the open-set (\pi)-system and hence all Borel sets.

Equality of the quadratic forms

[
\langle E_1(S)\xi,\xi\rangle
============================

\langle E_2(S)\xi,\xi\rangle
]

for every (\xi) implies operator equality by polarization. No countable dense set of Hilbert-space vectors is used, so nonseparability is harmless.

**Failure status:** none.

---

## Lemma 10 — PASS

**Passage assessed:** lines 1054–1304, complete interval reconstruction, including endpoint exposure and recovery.

### Endpoint exposure

For (r_a(t)=t-a),

[
F_aE(I\setminus{a})F_a=0.
]

Normalization therefore gives

[
F_aE({a})F_a=F_a.
]

The analogous statement holds at (b).

### Interior/boundary support separation

Compact interior exhaustion and Lemma 7 yield

[
F_0E({a,b})F_0=0,
]

hence

[
E({a,b})\le F_a+F_b.
]

Endpoint exposure gives

[
E((a,b))\le F_0.
]

Because the two pairs of positive operators both sum to (I), the inequalities force equality:

[
E((a,b))=F_0,\qquad
E({a,b})=F_a+F_b.
]

No commutativity of the POVM effects is being assumed or needed.

### Reconstruction of a compact interior subset

For compact (C\Subset(a,b)), let

[
R=F(C),\qquad R'=F((a,b)\setminus C).
]

Localization in both orientations gives

[
RE(C)R=R,\qquad
R'E(C)R'=0.
]

The decisive order estimate is

[
0\le E(C)\le E((a,b))=F_0.
]

Thus (E(C)) is supported on (R+R'). The first compression makes it the identity on (R); the second kills (R'). Therefore (E(C)=R).

Lemma 9 then reconstructs every Borel subset of the open interval.

### Endpoint recovery

For (T_a=E({a})),

[
F_aT_aF_a=F_a,\qquad
F_bT_aF_b=0,\qquad
0\le T_a\le F_a+F_b.
]

The effect lemma gives

[
T_aF_a=F_a,\qquad T_aF_b=0.
]

Support in (F_a+F_b) then forces (T_a=F_a). Similarly (E({b})=F_b).

This recovers the endpoints individually, not merely their sum.

### Scope note

If one permits the degenerate notation (a=b), the proof should begin with the trivial observation that every normalized POVM and PVM on a singleton coincide. All applications in the manuscript are to nondegenerate edges and intervals.

**Failure status:** none.

---

# II. Square theorem

## Spectral-measure setup — PASS

**Passage assessed:** lines 1308–1364.

The compressed measure

[
E(S)=V^*\mathsf E(S)V
]

is a normalized POVM, and (F) is the joint spectral PVM of the commuting compressions (A,B). For affine (\ell),

[
\int\ell,dE
===========

# \ell(V^*XV,V^*YV)

# \ell(A,B)

\int\ell,dF.
]

The assumed functional-calculus equality is precisely equality of the (f)-moments.

No operator Jensen inequality is being invoked. In particular, (f) need not be operator convex.

**Failure status:** none.

---

## Section C.1: edge exposure and reconstruction — PASS

**Passage assessed:** lines 1368–1410.

Each square edge is the zero set of one of the nonnegative affine functions

[
x,\quad1-x,\quad y,\quad1-y.
]

Lemma 8 shows that the compression to (F(L)H) is supported on (L). On that subspace, the compressed POVM and the edge PVM agree on:

[
1,\qquad s_L,\qquad f|_L.
]

The equality for (f|_L) follows by compressing the global (f)-moment equality by (F(L)). Since (F(L)) commutes with the (F)-functional calculus,

[
F(L)\left(\int f,dF\right)F(L)
==============================

\int_L f,dF.
]

Global strict convexity implies strict convexity on every nondegenerate edge. Lemma 10 therefore gives

[
F(L)E(S)F(L)=F(S\cap L).
]

### Common-domain stress test

The manuscript correctly does not use an edge subgradient against a point outside the edge. Such an argument would be false.

For example, on (Q=[0,1]^2), take

[
f(x,y)=x^2+y^2
]

and the bottom edge (L={y=0}). At (z=(1/2,0)), the one-dimensional edge subgradient determines only the horizontal component (1). An arbitrary ambient extension ((1,M)) is still indistinguishable on the edge, but for (t=(1/2,0.1)),

[
f(t)-f(z)-\langle(1,M),t-z\rangle
=================================

0.01-0.1M,
]

which is negative for large (M). Affine exposure before interval reconstruction is therefore essential and is correctly implemented.

**Failure status:** none.

---

## Section C.2: separation of interior and boundary — PASS

**Passage assessed:** lines 1414–1520.

Interior compact exhaustion plus Lemma 7 gives

[
F_{\mathrm{int}}E(\partial Q)F_{\mathrm{int}}=0.
]

Because (E(\partial Q)) is a positive effect, it follows that it is supported on (F_\partial H), hence

[
E(\partial Q)\le F_\partial.
]

Conversely, edge exposure gives

[
F(L)E(Q^\circ)F(L)=0
]

for each of the four edges. Positivity converts each compressed zero into actual annihilation. The finite join of the edge projections is (F_\partial), so

[
E(Q^\circ)F_\partial=0
]

and therefore

[
E(Q^\circ)\le F_{\mathrm{int}}.
]

Since the corresponding interior and boundary effects sum to (I), both inequalities are equalities.

Every operator-order implication here is valid. In particular, the proof does not infer (T\le R) merely from a diagonal scalar identity; it first obtains actual annihilation by positivity.

**Failure status:** none.

---

## Section C.3: reconstruction of the interior — PASS

**Passage assessed:** lines 1524–1624.

For compact (C\Subset Q^\circ), the proposed (J_n) are compact, increase with (n), are disjoint from (C), and exhaust (Q^\circ\setminus C).

Localization in both orientations gives

[
RE(C)R=R,
\qquad
R'E(C)R'=0,
]

where

[
R=F(C),\qquad
R'=F(Q^\circ\setminus C).
]

The essential order estimate

[
0\le E(C)\le E(Q^\circ)=F_{\mathrm{int}}
]

eliminates any component outside (R+R'). Thus (E(C)=R).

Lemma 9 applies to (Z=Q^\circ), which is locally compact, (\sigma)-compact, and metrizable. It reconstructs all Borel subsets of the interior.

**Failure status:** none.

---

## Section C.4: boundary reconstruction and overlapping edges — PASS

**Passage assessed:** lines 1628–1740.

## Independent boundary reconstruction

Fix Borel (S\subseteq\partial Q) and put

[
T=E(S).
]

The interior/boundary separation gives

[
0\le T\le F_\partial.
\tag{5}
]

For every edge (L), the interval reconstruction gives

[
F(L)TF(L)=F(S\cap L).
\tag{6}
]

Define

[
R_L=F(S\cap L),\qquad
N_L=F(L\setminus S).
]

From (6),

[
R_LTR_L=R_L,\qquad N_LTN_L=0.
]

Because (T) is an effect,

[
TR_L=R_L,\qquad TN_L=0.
]

Equivalently,

[
(I-T)R_L=0,\qquad TN_L=0.
]

There are only four edges. Lemma 1 applied to the finite joins gives

[
(I-T)\left(\bigvee_LR_L\right)=0,
\qquad
T\left(\bigvee_LN_L\right)=0.
]

For a PVM, finite joins correspond to unions even when the Borel sets overlap:

[
\bigvee_LR_L
============

# F!\left(\bigcup_L(S\cap L)\right)

F(S),
]

and

[
\bigvee_LN_L
============

# F!\left(\bigcup_L(L\setminus S)\right)

F(\partial Q\setminus S).
]

Thus

[
TF(S)=F(S),
\qquad
TF(\partial Q\setminus S)=0.
]

Finally, (5) says that (T) has no component outside

[
F_\partial
==========

F(S)+F(\partial Q\setminus S).
]

Therefore (T=F(S)).

The shared vertices cause no double counting because the argument is in the projection lattice, not by numerical addition of edge measures.

**Failure status:** none.

---

## Section C.5: leakage identities and reduction — PASS

**Passage assessed:** lines 1744–1811.

Equality (E=F) gives equality for (x^2) and (y^2). For (x^2),

[
V^*X^2V=A^2.
]

The exact defect is

[
\begin{aligned}
V^*X^2V-A^2
&=V^*X^2V-V^*XVV^*XV\
&=V^*X(I-P)XV\
&=((I-P)XV)^*((I-P)XV).
\end{aligned}
]

Hence

[
(I-P)XP=0.
]

Self-adjointness gives

[
PX(I-P)=0,
]

and therefore (PX=XP). The same calculation with (Y) proves (PY=YP).

No positivity of (X) or (Y) is needed at this last step; positivity and contractivity were used to place the joint spectra in the square.

**Failure status:** none.

---

# III. Polytope extension

## POVM reconstruction on a polytope of affine dimension (\le2) — PASS

**Passage assessed:** lines 1817–1941.

### Dimension zero

A normalized POVM and PVM on a singleton both assign the identity to that point.

### Dimension one

After affine identification with a nondegenerate interval, Lemma 10 applies. Strict convexity is invariant under an affine bijection of the affine hull.

### Dimension two

A compact two-dimensional polytope has finitely many edges. Each edge is an exposed face, so there is an affine (r_j\ge0) on (K) with zero set exactly (L_j). Such an affine functional on the affine hull extends to an affine functional on the ambient space.

Affine exposure and interval reconstruction give

[
F(L_j)E(S)F(L_j)=F(S\cap L_j).
]

Interior/boundary separation is exactly the square argument, with the finite join

[
\bigvee_{j=1}^NF(L_j)=F(\partial K).
]

Compact interior subsets are reconstructed with Lemma 7 in both orientations and the order bound

[
E(C)\le E(K^\circ)=F(K^\circ).
]

Boundary subsets are reconstructed using the finite edge joins

[
\bigvee_jF(S\cap L_j)=F(S),
]

[
\bigvee_jF(L_j\setminus S)=F(\partial K\setminus S).
]

No geometric step depends on right angles, equal side lengths, or the square’s coordinate structure.

### Finiteness

Finiteness is used twice:

1. the boundary is a finite union of edges;
2. only finite projection joins are invoked.

This is not an unstated assumption. It is part of the standard definition of a polytope and is also explicitly stated in the proof.

**Failure status:** none.

---

## Operator-theoretic polytope corollary — PASS

**Passage assessed:** lines 1945–2017.

The key preliminary claim is that the joint spectrum of the compressed commuting tuple (A=(A_1,\ldots,A_m)) lies in (K).

A compact polytope can be represented, in its affine hull, by finitely many affine equalities and facet inequalities. If (\ell=0) on (K), then

[
\ell(T)=0
]

by the joint functional calculus, and hence

[
\ell(A)=P\ell(T)P|_H=0.
]

If (\ell\ge0) on (K), then

[
\ell(T)\ge0
]

and therefore

[
\ell(A)=P\ell(T)P|_H\ge0.
]

For a commuting self-adjoint tuple, positivity of (\ell(A)) means that (\ell) is nonnegative on its joint spectrum. Thus the compressed joint spectrum satisfies every equality and inequality defining (K).

The compressed spectral POVM and the spectral PVM of (A) consequently both live on (K), agree on affine functions, and agree on (g). The preceding reconstruction theorem gives equality of the measures. The coordinate-square leakage identity then gives reduction of every (T_j).

### Scope of “self-adjoint operators”

Under the standard operator-algebra convention, “operator” means bounded. Pairwise commuting bounded self-adjoint operators automatically possess a joint continuous functional calculus.

If unbounded self-adjoint operators were intended, the statement would need to say “strongly commuting,” specify domains of the compressions, and justify (Pg(T)P). The displayed formulation and compact joint spectrum plainly place the corollary in the bounded functional-calculus setting.

### Type identification in the final displayed defect

Strictly as an operator on (H), the clean formula is

[
V^*T_j^2V-A_j^2
===============

\bigl((I-P)T_jV\bigr)^*
\bigl((I-P)T_jV\bigr).
]

The manuscript’s version with ((I-P)T_jP) is the same operator after identifying (H) with (P\mathcal K). This is a notation choice, not a mathematical gap.

**Failure status:** none.

---

# IV. Requested adversarial stress tests

## Nonsmooth strictly convex functions — PASS

Take, for example,

[
f(x,y)=x^2+y^2+\left|x-\frac12\right|.
]

It is strictly convex because (x^2+y^2) is strictly convex and the absolute-value term is convex, but it is nondifferentiable on (x=1/2). The proof uses only common-domain subgradients, their monotonicity, boundedness on compact interior sets, and Borel selection. No gradient or Hessian is required.

Functions with infinite one-sided slopes at boundary points are also covered because boundary points are handled by affine exposure rather than by boundary subgradients.

---

## Diffuse PVMs — PASS

Let (F) be multiplication by indicators on an (L^2)-space over a diffuse measure on the square, an edge, or an interval. If localization failed, the vector (\eta) constructed from (T^{1/2}u) would produce a nonzero diffuse scalar measure (\mu) on (C).

The reciprocal spectral estimate would give finite Bregman energy, while the covering argument gives critical (2)-Riesz divergence. No atomicity or discrete spectral decomposition is used.

---

## Nonseparable Hilbert spaces — PASS

One may take, for example,

[
H=L^2(K,\nu),\bar\otimes,\ell^2(I)
]

with (I) uncountable. The proof remains unchanged.

The only countability used is:

* a dense sequence in finite-dimensional (\mathbb R^d);
* countable compact exhaustions of metric subsets;
* ordinary scalar monotone convergence.

No countable dense subset of (H) is required.

---

## Boundary-supported spectral measures — PASS

If (F(Q^\circ)=0), the interior argument becomes vacuous, but the four edge reconstructions and their projection joins still recover the whole boundary measure.

If the spectral measure is supported only at vertices, each vertex projection is recovered as an endpoint by the interval theorem. Shared vertices are consistently identified by the PVM join argument.

---

## Attempted counterexample using a face subgradient — blocked correctly

A subgradient of (f|_L) on an edge does not in general support (f) at points outside (L). The explicit quadratic example above demonstrates this. The manuscript first proves support on the edge and only then applies the one-dimensional theorem, so this possible counterexample does not apply.

---

## Attempted counterexample by reversing Douglas — blocked correctly

The reversed range inclusion is false, as shown by (T_0=\operatorname{diag}(1,0)\le I). The manuscript uses the correct factorization

[
\sqrt c,T^{1/2}=M_z^{1/2}C_z.
]

---

## Attempted counterexample in dimension three — succeeds outside the stated scope

For quadratic (g) and three-dimensional Lebesgue measure, the critical reciprocal energy can be finite. This disproves a dimension-(3) version of Lemma 6, but the manuscript expressly restricts localization to affine dimension at most two.

---

# V. Exact assumptions actually used

The square theorem uses:

1. (X,Y) are bounded commuting self-adjoint operators with joint spectrum in ([0,1]^2);
2. (P) is an orthogonal projection;
3. (A,B) commute, so they possess a joint PVM;
4. (f) is finite, continuous, convex, and strictly convex on the square;
5. standard bounded joint spectral calculus;
6. finite-dimensional convex separation;
7. scalar Tonelli and monotone convergence.

It does **not** use:

* finite rank of (P);
* separability of either Hilbert space;
* differentiability, strict differentiability, or smoothness of (f);
* atomicity or discreteness of either spectral measure;
* finite-dimensionality of the Hilbert space;
* operator convexity of (f).

The polytope extension additionally uses the definitional finiteness of the edge and facet sets of a polytope.

# Final verdict

A. PASS — the proof establishes the exact theorem as written.
