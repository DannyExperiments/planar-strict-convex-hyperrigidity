# Final result

**Exact square theorem:** **PASS**
**Interval reconstruction theorem:** **PASS**
**Compact convex polytope extension in affine dimension (\le 2):** **PASS**
**Overall confidence:** **high**

I found no counterexample and no load-bearing mathematical gap in the stated results. The reciprocal-energy contradiction is valid for arbitrary continuous strictly convex (f), including nonsmooth (f), and it covers arbitrary diffuse scalar spectral measures. The interval argument reconstructs a completely general PVM, not merely a discrete or atomic one. The finite-edge gluing argument reconstructs a general diffuse PVM supported on a polygonal boundary, including mass distributed across several edges and arbitrary vertex atoms.

The argument does **not** establish the corresponding result for a compact convex set with a genuinely curved boundary. That stronger result is not claimed in the manuscript.

---

# 1. Strongest attempted counterexample

## 1.1 Diffuse, nonsmooth, nonseparable candidate inside the claimed setting

Take a compact interior square

[
C\Subset (0,1)^2
]

and a nonatomic measure (\nu) on (C), for example planar Lebesgue measure. Let

[
H=L^2(C,\nu)\otimes\mathcal N,
]

where (\mathcal N) may be nonseparable, and define the diffuse PVM

[
F(S)=M_{1_{S\cap C}}\otimes I_{\mathcal N}.
]

Use the nonsmooth strictly convex function

[
f(x,y)=x^2+y^2+|x-y|.
]

The quadratic term makes the sum strictly convex, while the absolute-value term gives a nontrivial multivalued subdifferential on the diagonal (x=y).

The natural attempted counterexample is to construct a POVM (E\neq F) with the same four moments and with nonzero “leakage” from (C) to a compact set

[
J\subset [0,1]^2,\qquad J\cap C=\varnothing.
]

Set

[
T=F(C)E(J)F(C).
]

The strongest simple candidate is a rank-one leakage operator

[
T=\varepsilon,|\eta\rangle\langle\eta|,
\qquad \eta\neq0.
]

For every (z\in C), choose any Borel subgradient (p(z)\in\partial f(z)), and put

[
D_z(t)
======

f(t)-f(z)-\langle p(z),t-z\rangle.
]

Strict convexity and compact separation give a uniform (c>0) such that

[
D_z(t)\ge c
\qquad (z\in C,\ t\in J).
]

The moment identities force

[
cT
\le
F(C)\left(\int D_z,dF\right)F(C)
=:M_z
\qquad\text{for every }z\in C. \tag{1}
]

For the multiplication PVM, (M_z) is multiplication by (D_z(t)) on (L^2(C,\nu)). Rank-one domination would therefore require a uniform bound of the form

[
\int_C \frac{|\eta(t)|^2}{D_z(t)},d\nu(t)
\le K
\qquad\text{for every }z\in C. \tag{2}
]

Writing

[
d\mu(t)=|\eta(t)|^2,d\nu(t),
]

and integrating (2) against (d\mu(z)) would give

[
\iint_{C\times C}
\frac{d\mu(t),d\mu(z)}{D_z(t)}
<\infty. \tag{3}
]

But the critical energy lemma proves that (3) is impossible for every nonzero finite (\mu) in affine dimension (1) or (2). This includes:

* measures absolutely continuous with respect to area;
* measures supported on curves or Cantor sets;
* singular continuous measures;
* measures with atoms;
* vector measures arising from nonseparable spectral multiplicity.

Thus the diffuse rank-one perturbation fails. The general non-rank-one attempt fails for exactly the same reason: from any nonzero (T), one chooses

[
\eta=T^{1/2}u\neq0,
]

and obtains the same scalar measure and reciprocal-energy contradiction.

## 1.2 Why nonsmoothness does not rescue the construction

At a nondifferentiability point, the selected (p(z)) can jump. One might hope that the graph

[
G(z)=(z,p(z))\in\mathbb R^4
]

could acquire sufficiently high metric dimension that inverse-square energy becomes finite.

That does not happen. Any selection from a convex subdifferential is monotone. Defining

[
U(z)=z+p(z),
\qquad
W(z)=z-p(z),
]

monotonicity gives

[
|W(z)-W(t)|
\le
|U(z)-U(t)|,
]

and consequently

[
|G(z)-G(t)|
\le
|U(z)-U(t)|. \tag{4}
]

Thus the possibly discontinuous subgradient graph is still parametrized, in the relevant metric direction, by a bounded subset of (\mathbb R^2). Its effective covering dimension cannot exceed (2). The critical inverse-square divergence therefore survives arbitrary nonsmoothness.

## 1.3 Boundary-shuffling attempt

A second plausible counterexample is to let (F) be diffuse arclength spectral measure on (\partial[0,1]^2) and try to move POVM mass between adjacent edges, perhaps exploiting their common vertices.

This also fails:

1. For each edge (L), an affine nonnegative function vanishing precisely on (L) forces
   [
   F(L)E(Q\setminus L)F(L)=0.
   ]
2. Positivity turns zero compression into zero full row and column:
   [
   E(Q\setminus L)F(L)=0.
   ]
3. The compressed POVM on (F(L)H) is therefore supported on (L).
4. The interval theorem reconstructs it exactly on every Borel subset of (L), including arbitrary diffuse measures.
5. At vertices, overlapping edge projections are handled by PVM joins, not by summing measures and double-counting.

No cross-edge positive perturbation survives these support identities.

## 1.4 A genuine near-counterexample in dimension (3)

The dimensional cutoff in the proof is real.

Let (C=[0,1]^3), let (F) be multiplication by characteristic functions on (L^2(C)), and let

[
f(t)=|t|^2,
\qquad
D_z(t)=|t-z|^2.
]

Set (\eta=1). In three dimensions,

[
\sup_{z\in C}
\int_C\frac{dt}{|t-z|^2}
<\infty,
]

because near (z),

[
\int_0^\varepsilon r^{3-1}r^{-2},dr
===================================

\int_0^\varepsilon dr
<\infty.
]

Hence, for sufficiently small (\varepsilon>0),

[
T=\varepsilon,|\eta\rangle\langle\eta|
]

satisfies

[
T\le M_{|t-z|^2}
\qquad\text{for every }z\in C.
]

Indeed, Cauchy–Schwarz gives

[
\varepsilon|\langle \xi,\eta\rangle|^2
\le
\varepsilon
\left(\int_C |t-z|^2|\xi(t)|^2dt\right)
\left(\int_C\frac{dt}{|t-z|^2}\right).
]

This is not by itself a full POVM counterexample, but it is a genuine counterexample to the critical localization obstruction in dimension (3). The exponent (d=2) is exactly critical for this proof.

---

# 2. Independent reconstruction from the four moments

Let (K\subset\mathbb R^d), (d\le2), and suppose

[
\int 1,dE=\int1,dF,
\qquad
\int x_i,dE=\int x_i,dF,
\qquad
\int f,dE=\int f,dF,
]

where (E) is a normalized POVM, (F) is a PVM, and (f) is continuous and strictly convex.

The coordinate identities imply equality for every affine function (\ell):

[
\int\ell,dE=\int\ell,dF. \tag{5}
]

The proof has two independent mechanisms:

1. **Interior localization by reciprocal Bregman energy.**
2. **Boundary reconstruction by affine exposure and interval reconstruction.**

---

# 3. The reciprocal-energy contradiction

This is the critical part of the theorem.

## 3.1 Subgradient selection

Let

[
C\Subset\operatorname{ri}K.
]

For every (z\in C), the relative subdifferential

[
\partial_K f(z)
===============

\left{
p:
f(t)\ge f(z)+\langle p,t-z\rangle
\text{ for every }t\in K
\right}
]

is nonempty.

Because (C) stays a positive distance from (\partial K), the subgradients on (C) are uniformly bounded. Their graph is closed and bounded, hence compact. A bounded Borel selector

[
p(z)\in\partial_K f(z)
]

therefore exists.

No differentiability is used.

Define

[
D_z(t)
======

f(t)-f(z)-\langle p(z),t-z\rangle.
]

Then (D_z(t)\ge0), and strict convexity gives

[
D_z(t)>0\qquad(t\ne z). \tag{6}
]

Indeed, equality at (t\ne z) would force equality in the convexity inequality at every interior point of the segment ([z,t]).

## 3.2 Uniform separation from a disjoint compact set

Let (J\subset K) be compact and disjoint from (C). On the compact set

[
{(z,p,t):z\in C,\ p\in\partial_Kf(z),\ t\in J},
]

the Bregman defect is continuous and strictly positive. Hence there exists (c>0) such that

[
D_z(t)\ge c
\qquad(z\in C,\ t\in J). \tag{7}
]

Thus

[
D_z\ge c,1_J.
]

By positivity of the POVM integral,

[
cE(J)
\le
\int D_z,dE
===========

\int D_z,dF, \tag{8}
]

where the equality follows from (5) and the (f)-moment identity.

Let

[
R=F(C),
\qquad
T=RE(J)R.
]

Compressing (8) gives

[
cT\le M_z,
\qquad
M_z
===

R\left(\int D_z,dF\right)R. \tag{9}
]

Since (R) is a spectral projection of (F), it commutes with (\int D_z,dF). Thus (M_z) is precisely the restriction to (RH) of the (F)-functional calculus for (D_z).

## 3.3 Douglas factorization in the correct orientation

Assume (T\ne0). Choose (u\in RH) such that

[
\eta=T^{1/2}u\ne0.
]

From

[
cT\le M_z
]

Douglas factorization gives a contraction (C_z) such that

[
\sqrt c,T^{1/2}
===============

M_z^{1/2}C_z. \tag{10}
]

The orientation is correct: (SS^*\le TT^*) gives (S=TC). This is also exactly the orientation in Douglas’s original factorization theorem. 

Set

[
v_z=C_zu.
]

Then

[
\sqrt c,\eta=M_z^{1/2}v_z,
\qquad
|v_z|\le|u|. \tag{11}
]

Define the scalar spectral measure

[
\mu(S)
======

# \langle F(S)\eta,\eta\rangle

|F(S)\eta|^2.
]

Since (R\eta=\eta), the measure is supported on (C), and

[
\mu(C)=|\eta|^2>0. \tag{12}
]

## 3.4 From Douglas factorization to finite reciprocal energy

For (n\ge1), put

[
h_n(s)=
\begin{cases}
\min{n,s^{-1}},&s>0,\
n,&s=0.
\end{cases}
]

Then

[
0\le s h_n(s)\le1,
\qquad
h_n(s)\uparrow s^{-1}.
]

Because (R) reduces the (F)-functional calculus,

[
\begin{aligned}
\int_C h_n(D_z(t)),d\mu(t)
&=
\langle h_n(M_z)\eta,\eta\rangle\
&=
\frac1c
\langle
M_z^{1/2}h_n(M_z)M_z^{1/2}v_z,v_z
\rangle\
&=
\frac1c
\langle M_zh_n(M_z)v_z,v_z\rangle\
&\le
\frac1c|v_z|^2\
&\le
\frac1c|u|^2.
\end{aligned} \tag{13}
]

Monotone convergence yields, for every (z\in C),

[
\int_C\frac{d\mu(t)}{D_z(t)}
\le
\frac{|u|^2}{c}. \tag{14}
]

No measurable choice of (C_z) is required. The factors are used only pointwise; the resulting left side is a Borel function of (z), and the upper bound is independent of (z).

Integrating (14) with respect to (d\mu(z)) gives

[
\iint_{C\times C}
\frac{d\mu(t),d\mu(z)}{D_z(t)}
<\infty. \tag{15}
]

## 3.5 Critical inverse-square divergence

For (z,t\in C),

[
D_z(t)+D_t(z)
=============

\langle p(t)-p(z),t-z\rangle.
]

Both defects are nonnegative, so

[
\begin{aligned}
D_z(t)
&\le
\langle p(t)-p(z),t-z\rangle\
&\le
|p(t)-p(z)|,|t-z|\
&\le
\frac12
\left(
|p(t)-p(z)|^2+|t-z|^2
\right).
\end{aligned}
]

Let

[
G(z)=(z,p(z)).
]

Then

[
D_z(t)
\le
\frac12|G(t)-G(z)|^2,
]

and therefore

[
\frac1{D_z(t)}
\ge
\frac2{|G(t)-G(z)|^2}. \tag{16}
]

Now define

[
U(z)=z+p(z),
\qquad
W(z)=z-p(z).
]

Subgradient monotonicity gives

[
\langle p(z)-p(t),z-t\rangle\ge0,
]

so

[
|W(z)-W(t)|
\le
|U(z)-U(t)|. \tag{17}
]

Moreover,

[
\begin{aligned}
|G(z)-G(t)|^2
&=
|z-t|^2+|p(z)-p(t)|^2\
&=
\frac12
\left(
|U(z)-U(t)|^2+
|W(z)-W(t)|^2
\right)\
&\le
|U(z)-U(t)|^2.
\end{aligned} \tag{18}
]

The bounded set (U(C)\subset\mathbb R^d) can be partitioned into at most

[
N(r)\le Mr^{-d}
]

half-open Borel cubes of diameter at most (r). Pulling them back under the Borel map (U) gives a Borel partition

[
C=C_1\dot\cup\cdots\dot\cup C_{N(r)}.
]

Pairs in the same (C_j) satisfy

[
|G(z)-G(t)|\le r.
]

Writing (m=\mu(C)>0), Cauchy–Schwarz gives

[
\begin{aligned}
(\mu\times\mu)
{|G(z)-G(t)|\le r}
&\ge
\sum_j\mu(C_j)^2\
&\ge
\frac{m^2}{N(r)}\
&\ge
\frac{m^2}{M}r^d.
\end{aligned} \tag{19}
]

The layer-cake identity

[
a^{-2}=2\int_a^\infty r^{-3},dr
]

and Tonelli imply

[
\begin{aligned}
\iint\frac{d\mu(z)d\mu(t)}
{|G(z)-G(t)|^2}
&=
2\int_0^\infty
r^{-3}
(\mu\times\mu){|G(z)-G(t)|\le r},dr\
&\ge
\frac{2m^2}{M}
\int_0^{r_0}r^{d-3},dr.
\end{aligned}
]

For (d=1),

[
\int_0^{r_0}r^{-2},dr=\infty,
]

and for (d=2),

[
\int_0^{r_0}r^{-1},dr=\infty.
]

Consequently,

[
\iint\frac{d\mu(t)d\mu(z)}{D_z(t)}
=\infty,
]

contradicting (15). Therefore

[
\boxed{F(C)E(J)F(C)=0.} \tag{20}
]

This proves the localization lemma, including the fully diffuse and nonatomic case.

---

# 4. Independent reconstruction of the interval theorem

Let (I=[a,b]), with the standard nondegenerate convention (a<b). Let (E) be a normalized POVM, (F) a PVM, and assume equality of the (1), (t), and (g(t)) moments for continuous strictly convex (g).

Write

[
I^\circ=(a,b),
\qquad
F_0=F(I^\circ),
\qquad
F_a=F({a}),
\qquad
F_b=F({b}).
]

## 4.1 Endpoint exposure

The affine functions

[
t-a,\qquad b-t
]

are nonnegative and vanish exactly at (a) and (b), respectively.

The moment identities imply

[
F_aE(I\setminus{a})F_a=0,
\qquad
F_bE(I\setminus{b})F_b=0. \tag{21}
]

## 4.2 Interior versus endpoints

Take compact intervals (C_n\uparrow I^\circ). Localization with

[
C=C_n,
\qquad
J={a,b}
]

gives

[
F(C_n)E({a,b})F(C_n)=0.
]

Passing strongly to the limit,

[
F_0E({a,b})F_0=0.
]

Positivity gives

[
E({a,b})F_0=0,
]

and since (E({a,b})\le I),

[
E({a,b})\le F_a+F_b. \tag{22}
]

Conversely, (21) implies

[
F_aE(I^\circ)F_a=0,
\qquad
F_bE(I^\circ)F_b=0.
]

Zero compression of a positive operator annihilates the entire corresponding range. Hence (E(I^\circ)) annihilates the join (F_a\vee F_b), so

[
E(I^\circ)\le F_0. \tag{23}
]

Because the two sides are complementary,

[
E(I^\circ)+E({a,b})=I
]

and

[
F_0+F_a+F_b=I,
]

(22)–(23) force

[
E(I^\circ)=F_0,
\qquad
E({a,b})=F_a+F_b. \tag{24}
]

## 4.3 Compact interior sets

Let (C\Subset I^\circ). Put

[
R=F(C),
\qquad
R'=F(I^\circ\setminus C).
]

Choose compact (J_n\uparrow I^\circ\setminus C).

Localization in the two orientations gives

[
RE(I^\circ\setminus C)R=0,
\qquad
R'E(C)R'=0. \tag{25}
]

Using (E(I^\circ)=F_0),

[
RE(C)R=R. \tag{26}
]

Since (0\le E(C)\le I), (26) implies

[
E(C)R=R.
]

The second identity in (25) implies

[
E(C)R'=0.
]

Finally,

[
E(C)\le E(I^\circ)=F_0=R+R',
]

so there is no component outside (R+R'). Thus

[
E(C)=R=F(C). \tag{27}
]

Equality on compact subsets extends to all Borel subsets of (I^\circ) by scalarization, compact exhaustion, and polarization. This step does not assume atomicity.

## 4.4 Endpoint recovery

Let (T_a=E({a})). From endpoint exposure,

[
F_aT_aF_a=F_a,
\qquad
F_bT_aF_b=0.
]

Also,

[
0\le T_a\le F_a+F_b.
]

Positivity therefore gives

[
T_aF_a=F_a,
\qquad
T_aF_b=0,
]

hence

[
T_a=F_a.
]

Similarly,

[
E({b})=F_b.
]

Therefore

[
\boxed{E=F\text{ on }I.}
]

This reconstructs arbitrary continuous, singular continuous, or atomic spectral measures.

---

# 5. Independent reconstruction of the square theorem

Let

[
Q=[0,1]^2.
]

Let (\mathsf E) be the joint spectral PVM of (X,Y), and let

[
E(S)=V^*\mathsf E(S)V
]

be its compression to (H=P\mathcal K). Let (F) be the joint spectral PVM of the commuting compressions (A,B).

The four equalities are precisely

[
\int1,dE=\int1,dF,
\quad
\int x,dE=\int x,dF,
\quad
\int y,dE=\int y,dF,
\quad
\int f,dE=\int f,dF.
]

## 5.1 Reconstruction on every edge

For each edge (L), one of

[
x,\quad 1-x,\quad y,\quad 1-y
]

is nonnegative and vanishes exactly on (L). Affine exposure gives

[
F(L)E(Q\setminus L)F(L)=0. \tag{28}
]

Thus

[
E_L(S)=F(L)E(S)F(L)
]

is a normalized POVM on (F(L)H), supported on (L).

An affine coordinate along (L) extends to an affine function on (Q). Consequently (E_L) and (F|_L) agree on:

[
1,\qquad s_L,\qquad f|_L.
]

The restriction (f|_L) is strictly convex. The interval theorem therefore gives

[
\boxed{
F(L)E(S)F(L)=F(S\cap L)
} \tag{29}
]

for every Borel (S\subset Q).

This already reconstructs any diffuse PVM on an individual edge.

## 5.2 Interior-boundary separation

Let

[
F_{\mathrm{int}}=F(Q^\circ),
\qquad
F_\partial=F(\partial Q).
]

Take compact (C_n\uparrow Q^\circ). Localization with (J=\partial Q) gives

[
F(C_n)E(\partial Q)F(C_n)=0.
]

Strong convergence yields

[
F_{\mathrm{int}}E(\partial Q)F_{\mathrm{int}}=0,
]

and hence

[
E(\partial Q)\le F_\partial. \tag{30}
]

For each edge (L), (28) implies

[
F(L)E(Q^\circ)F(L)=0.
]

Positivity gives (E(Q^\circ)F(L)=0). Since

[
\bigvee_LF(L)=F(\partial Q),
]

one obtains

[
E(Q^\circ)\le F_{\mathrm{int}}. \tag{31}
]

Using normalization and complementary supports,

[
\boxed{
E(Q^\circ)=F_{\mathrm{int}},
\qquad
E(\partial Q)=F_\partial.
} \tag{32}
]

## 5.3 Interior reconstruction

For compact (C\Subset Q^\circ), let

[
R=F(C),
\qquad
R'=F(Q^\circ\setminus C).
]

Choose compact (J_n\uparrow Q^\circ\setminus C). Localization in both orientations gives

[
RE(Q^\circ\setminus C)R=0,
\qquad
R'E(C)R'=0.
]

Using (32),

[
RE(C)R=R.
]

Therefore

[
E(C)R=R,
\qquad
E(C)R'=0.
]

The indispensable order bound is

[
0\le E(C)\le E(Q^\circ)=F_{\mathrm{int}}=R+R'.
]

It eliminates every component outside (R+R'), and therefore

[
E(C)=F(C). \tag{33}
]

Compact-to-Borel extension gives

[
E(S)=F(S)
\qquad
(S\subseteq Q^\circ\text{ Borel}). \tag{34}
]

## 5.4 Reconstruction of an arbitrary diffuse boundary PVM

Let (S\subseteq\partial Q) be Borel, and put

[
T=E(S).
]

By (32),

[
0\le T\le F_\partial. \tag{35}
]

For each edge (L), (29) gives

[
F(L)TF(L)=F(S\cap L). \tag{36}
]

Set

[
R_L=F(S\cap L),
\qquad
N_L=F(L\setminus S).
]

From (36),

[
R_LTR_L=R_L.
]

Since (0\le T\le I),

[
TR_L=R_L. \tag{37}
]

Similarly,

[
N_LTN_L=0
]

implies

[
TN_L=0. \tag{38}
]

For a PVM, finite joins correspond exactly to finite unions, even when sets overlap:

[
\bigvee_LR_L
============

# F\left(\bigcup_L(S\cap L)\right)

F(S), \tag{39}
]

and

[
\bigvee_LN_L
============

# F\left(\bigcup_L(L\setminus S)\right)

F(\partial Q\setminus S). \tag{40}
]

Applying the positivity facts to the joins gives

[
TF(S)=F(S),
\qquad
TF(\partial Q\setminus S)=0.
]

Since (T) is supported on

[
F_\partial
==========

F(S)+F(\partial Q\setminus S),
]

it follows that

[
T=F(S).
]

Therefore

[
E(S)=F(S)
\qquad
(S\subseteq\partial Q\text{ Borel}). \tag{41}
]

This argument is completely independent of whether (F) is atomic. A PVM given by diffuse arclength, singular continuous measures on edge Cantor sets, arbitrary multiplicity, or a mixture of diffuse edge mass and vertex atoms is reconstructed exactly.

Combining (34) and (41),

[
\boxed{E=F\text{ on }Q.} \tag{42}
]

## 5.5 From equality of measures to reduction

Equality of the POVM and PVM gives, in particular,

[
V^*X^2V=A^2.
]

But

[
\begin{aligned}
V^*X^2V-A^2
&=
V^*X(I-VV^*)XV\
&=
\bigl((I-P)XV\bigr)^*
\bigl((I-P)XV\bigr).
\end{aligned}
]

Hence

[
(I-P)XP=0.
]

Since (X=X^*), the opposite off-diagonal block also vanishes:

[
PX(I-P)=0.
]

Thus

[
PX=XP.
]

The same argument with (y^2) gives

[
PY=YP.
]

Therefore the exact square theorem holds.

---

# 6. Polygon/polytope extension

Let (K) be a compact convex polytope of affine dimension (2). Its boundary is a finite union of exposed edges,

[
\partial K=L_1\cup\cdots\cup L_N.
]

For every edge (L_j), there is a nonnegative affine function (r_j) on (K) whose zero set is exactly (L_j). Affine exposure followed by interval reconstruction gives

[
F(L_j)E(S)F(L_j)
================

F(S\cap L_j) \tag{43}
]

for every Borel (S).

The interior is handled by the same reciprocal-energy localization as the square. The boundary is handled by the same finite-join argument:

[
\bigvee_j F(S\cap L_j)=F(S),
]

[
\bigvee_j F(L_j\setminus S)
===========================

F(\partial K\setminus S).
]

Edge overlaps at vertices are harmless because PVM joins implement set unions. Hence

[
E=F.
]

The dimension-(1) case is the interval theorem, and dimension (0) is immediate.

For the operator corollary, the compressed commuting tuple has joint spectrum in (K): affine equalities defining the affine hull remain equalities under compression, and affine facet inequalities remain positive under compression. Equality of the reconstructed spectral measures then gives each coordinate-square identity and therefore reduction.

Thus the polytope extension in affine dimension at most (2) passes.

---

# 7. Curved boundaries

A genuinely curved boundary is not covered by this proof.

For a strictly convex body such as a disk, each boundary point may be exposed individually, but for a diffuse boundary-supported PVM,

[
F({z})=0
]

for every point (z). Pointwise exposure gives no usable spectral subspace. There is also no finite family of one-dimensional exposed faces on which the interval theorem can be applied and then glued by finite joins.

Accordingly:

> **Claiming the same proof for every compact convex set of affine dimension (2) would be FATAL to that stronger proof.**

This is not a discrepancy in the manuscript, because its extension is explicitly limited to polytopes. The attached proof’s stated scope and its actual boundary argument agree. 

---

# 8. Dependency graph

```text
Four moment identities
│
├── Equality for all affine functions
│
├── Positivity/order facts (Lemmas 1–2)
│
├── Interior convex analysis
│   ├── Subgradient existence and bounded Borel selection (Lemma 3)
│   ├── Uniform Bregman separation (Lemma 4)
│   ├── Douglas factorization (Lemma 5)
│   └── Critical inverse-square divergence (Lemma 6)
│         │
│         └── Localization F(C)E(J)F(C)=0 (Lemma 7)
│
├── Affine zero-set exposure (Lemma 8)
│
├── Compact-to-Borel extension (Lemma 9)
│
└── Interval reconstruction (Lemma 10)
    ├── Endpoint exposure
    ├── Interior/endpoints separation
    ├── Two-sided localization of compact interior sets
    ├── Compact-to-Borel extension
    └── Endpoint recovery

Square theorem
│
├── Compressed joint spectral POVM E
├── Joint spectral PVM F of (A,B)
├── Edge exposure + interval theorem
├── Interior/boundary separation
├── Interior reconstruction by localization
├── Boundary reconstruction by finite PVM joins
├── E=F
└── x² and y² leakage identities
    └── P reduces X and Y

Two-dimensional polytope theorem
│
├── Finite exposed-edge decomposition
├── Interval reconstruction on every edge
├── Interior localization
├── Finite boundary gluing
└── E=F
```

---

# 9. PASS/FAIL audit of every load-bearing component

| Component                                        |   Status | Audit                                                                                                                         |
| ------------------------------------------------ | -------: | ----------------------------------------------------------------------------------------------------------------------------- |
| Lemma 1: zero compression of a positive operator | **PASS** | (RTR=0\Rightarrow T^{1/2}R=0), so all off-diagonal blocks vanish. Identity-compression case follows from (I-T).               |
| Lemma 1: finite joins                            | **PASS** | Applied only to finite edge or endpoint families.                                                                             |
| Lemma 2: POVM monotonicity                       | **PASS** | Follows directly from positivity and additivity.                                                                              |
| Lemma 2: increasing-set strong convergence       | **PASS** | Increasing bounded positive operators converge strongly; scalar forms identify the limit with (E(S)). No separability needed. |
| Lemma 3: interior subgradient existence          | **PASS** | Supporting hyperplane cannot be vertical because the base point is in the relative interior.                                  |
| Lemma 3: uniform boundedness                     | **PASS** | A fixed interior ball around the compact set controls every directional component of every subgradient.                       |
| Lemma 3: compact graph                           | **PASS** | Closed plus uniformly bounded in finite dimension.                                                                            |
| Lemma 3: Borel selector                          | **PASS** | Countable dense approximation to compact fibers is valid; no differentiability assumed.                                       |
| Lemma 4: uniform Bregman gap                     | **PASS** | Strict convexity makes the defect positive off the diagonal; compactness gives a positive minimum.                            |
| Lemma 5: Douglas orientation                     | **PASS** | (SS^*\le TT^*\Rightarrow S=TC), with (|C|\le1).                                                                               |
| Lemma 6: Bregman-to-inverse-square comparison    | **PASS** | Uses the symmetric Bregman identity and monotonicity correctly.                                                               |
| Lemma 6: Minty parametrization                   | **PASS** | Gives (|G(z)-G(t)|\le|U(z)-U(t)|), despite nonsmooth or discontinuous selectors.                                              |
| Lemma 6: measurable cube partition               | **PASS** | (U) is Borel; half-open cube pullbacks are a finite Borel partition.                                                          |
| Lemma 6: critical energy divergence              | **PASS** | Pair-mass lower bound (cr^d) and layer cake give (\int_0r^{d-3}dr=\infty) for (d\le2).                                        |
| Lemma 7: moment-to-domination step               | **PASS** | (D_z\ge c1_J) and equality of affine and (f)-moments give (cT\le M_z).                                                        |
| Lemma 7: Douglas-to-reciprocal-energy step       | **PASS** | Truncated inverses avoid any illegal unbounded inverse.                                                                       |
| Lemma 7: measurability                           | **PASS** | Only the reciprocal kernel must be measurable; the Douglas factors need not be.                                               |
| Lemma 7: localization conclusion                 | **PASS** | Finite reciprocal energy contradicts Lemma 6.                                                                                 |
| Lemma 8: affine exposure                         | **PASS** | The increasing sets ({r\ge1/n}) recover the full complement of the zero set.                                                  |
| Lemma 9: compact-to-Borel                        | **PASS** | Scalar compact exhaustion, open-set equality, Dynkin system, then polarization.                                               |
| Lemma 10: endpoint exposure                      | **PASS** | Uses only the affine moment.                                                                                                  |
| Lemma 10: support separation                     | **PASS** | Both required operator-order inequalities are valid.                                                                          |
| Lemma 10: compact interior reconstruction        | **PASS** | The order bound (E(C)\le F(I^\circ)) eliminates hidden exterior blocks.                                                       |
| Lemma 10: diffuse Borel reconstruction           | **PASS** | No atom decomposition is used.                                                                                                |
| Square edge reconstruction                       | **PASS** | The edge compression is normalized and supported before invoking the interval theorem.                                        |
| Square interior-boundary separation              | **PASS** | Both complementary order inequalities are established.                                                                        |
| Square boundary gluing                           | **PASS** | PVM joins correctly handle overlapping vertices.                                                                              |
| Equality (E=F\Rightarrow) reduction              | **PASS** | Coordinate-square leakage operators are positive squares.                                                                     |
| Polytope edge exposure                           | **PASS** | Every edge of a two-dimensional polytope is an exposed facet.                                                                 |
| Polytope finite boundary gluing                  | **PASS** | Finiteness is exactly what the join argument requires.                                                                        |
| Compressed joint spectrum remains in (K)         | **PASS** | Affine hull equations and facet inequalities survive compression.                                                             |

---

# 10. Discrepancy ledger

The independent reconstruction agrees with the substantive argument in the attached proof. 

## EXPOSITORY

1. **Reduction of the spectral calculus by (R=F(C)).**
   Before writing
   [
   \int h_n(D_z),d\mu
   ==================

   \langle h_n(M_z)\eta,\eta\rangle,
   ]
   one should state explicitly that (R) commutes with (\int D_z,dF), so (M_z) is its restriction to (RH).

2. **Products under strong convergence.**
   Several passages use
   [
   R_n\to R\text{ strongly}
   \quad\Longrightarrow\quad
   R_nTR_n\to RTR\text{ strongly}.
   ]
   This is correct for uniformly bounded (R_n), but an explicit line would remove ambiguity.

3. **Support implies domination by a projection.**
   From (TF_0=0) and (0\le T\le I), the proof infers (T\le I-F_0). Correct, but implicit.

4. **Transfer of moments to an exposed edge.**
   The compressed constant, coordinate, and (f)-moment identities are valid, but could be displayed rather than asserted.

5. **Finite PVM join identity.**
   The formula
   [
   \bigvee_jF(S_j)=F!\left(\bigcup_jS_j\right)
   ]
   is correct for finite families, including overlapping sets. An explicit two-set calculation would make the vertex argument completely transparent.

6. **Degenerate interval convention.**
   Lemma 10 should explicitly assume (a<b), or dispatch (a=b) as an immediate one-point case. The main square and positive-dimensional polytope applications use only nondegenerate intervals.

## REPAIRABLE

**None affecting the stated square, interval, or polytope conclusions.**

## FATAL

**None in the stated claims.**

A general curved-boundary extension would require a new argument and would be fatal if silently inferred from the current polytope proof, but that extension is not stated.

---

# Exact final verdict

[
\boxed{\textbf{PASS}}
]

The reciprocal-energy contradiction is correct and self-contained; the interval theorem reconstructs arbitrary diffuse PVMs; the square boundary gluing handles overlapping edges and vertex mass; and the finite-edge polytope extension is valid in affine dimension at most (2).
