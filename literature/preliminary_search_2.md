## Conclusion

Assuming “polygon” means a **compact convex polygon**, I found **no prior published or posted theorem that proves**

[
S_f:=\operatorname{span}_{\mathbb C}{1,x,y,f}\subset C(K)
]

is hyperrigid for **every** full-dimensional polygon (K\subset\mathbb R^2) and **every** continuous strictly convex (f\colon K\to\mathbb R).

The closest general results are:

1. hyperrigidity of affine functions on every compact convex set in (\mathbb R^2);
2. hyperrigidity of affine functions on compact spectrahedra in arbitrary dimension;
3. the one-variable strictly convex theorem;
4. atomic-representation consequences;
5. special algebraic choices of (f), notably all strictly convex quadratic functions.

None of these covers the unrestricted target. The main reason is easy to miss: the relevant affine-function-system body is not the original polygon (K), but the generally **three-dimensional** convex hull of the graph of (f). The latest literature I found, including the March 29, 2026 version of Pietrzycki–Stochel, continues to describe the general commutative hyperrigidity problem as open, even for singly generated commutative (C^*)-algebras. ([arXiv][1])

**Confidence:** high on the theorem-by-theorem comparison; moderate-high on the claim that no other result through July 23, 2026 covers the exact unrestricted statement.

All page references below are **1-based PDF pages**.

---

# 1. The exact affine-function-system reduction

Put

[
\gamma\colon K\longrightarrow\mathbb R^3,\qquad
\gamma(z)=\bigl(z_1,z_2,f(z)\bigr),
]

and

[
C_f:=\operatorname{conv}\gamma(K)\subset\mathbb R^3,\qquad
\Gamma_f:=\gamma(K).
]

A state (\omega) on (S_f) is determined by

[
\bigl(\omega(x),\omega(y),\omega(f)\bigr)\in C_f,
]

and every point of (C_f) arises this way. Thus the state space of (S_f) is affinely homeomorphic to (C_f). Under this identification,

[
a+bx+cy+df
\quad\longleftrightarrow\quad
(\xi_1,\xi_2,\xi_3)\longmapsto
a+b\xi_1+c\xi_2+d\xi_3.
]

Hence

[
S_f\cong A(C_f)|_{\Gamma_f},
]

where (A(C_f)) denotes the continuous affine functions on (C_f). This is the concrete instance of Kadison’s state-space representation theorem; see Davidson–Kennedy, Theorem 2.2, PDF pp. 5–6. 

Strict convexity gives

[
\operatorname{ex} C_f=\Gamma_f.
]

Indeed, if a probability measure (\mu) on (K) represents (\gamma(z)), then

[
z=\int_K t,d\mu(t),\qquad
f(z)=\int_K f(t),d\mu(t).
]

Equality in strict Jensen forces (\mu=\delta_z), so (\gamma(z)) is extreme. Conversely, every extreme point of the convex hull of the compact set (\Gamma_f) belongs to (\Gamma_f). Therefore

[
C(\operatorname{ex}C_f)=C(\Gamma_f)\cong C(K)
]

and the target is exactly

[
\boxed{
S_f\text{ hyperrigid in }C(K)
\iff
A(C_f)\text{ hyperrigid in }C(\operatorname{ex}C_f).
}
]

This is also the canonical state-space transport of the unique-extension property in Davidson–Kennedy, Theorem 7.8 and Corollary 7.9, PDF p. 26. 

## The dimensional obstruction

When (K) has nonempty interior,

[
\operatorname{affdim}C_f=3.
]

Otherwise the graph of (f) would satisfy a nontrivial affine equation

[
a+bx+cy+df(x,y)=0.
]

If (d=0), the affine function (a+bx+cy) vanishes on a two-dimensional set, so all coefficients vanish. If (d\ne0), then (f) is affine, contradicting strict convexity.

Thus Scherer’s theorem for convex sets in (\mathbb R^2) is **one affine dimension short** of the full target.

For a polygon with vertices (v_1,\dots,v_m), one can also write

[
C_f=
\left{(z,s):
z\in K,\quad
f(z)\le s\le \operatorname{cav}_K f(z)
\right},
]

where

[
\operatorname{cav}_K f(z)
=========================

\max\left{
\sum_{j=1}^m\lambda_j f(v_j):
\lambda_j\ge0,\
\sum_j\lambda_j=1,\
\sum_j\lambda_jv_j=z
\right}.
]

The upper boundary is polyhedral, but the lower boundary is the arbitrary strictly convex graph of (f). Polygonality of (K) therefore does not automatically make (C_f) a spectrahedron.

---

# 2. Exact POVM/PVM and compression formulations

Let (E) be a normalized regular POVM on (K) acting on a Hilbert space (H), and let (F) be a regular PVM on (K) acting on the same space. The target is exactly the assertion

[
\boxed{
\begin{aligned}
\int_K x,dE&=\int_Kx,dF,\
\int_K y,dE&=\int_Ky,dF,\
\int_K f,dE&=\int_Kf,dF
\end{aligned}
\quad\Longrightarrow\quad E=F.
}
\tag{POVM/PVM}
]

Equality for (1) is included through normalization. Equivalently, equality then holds for every (g\in C(K)).

This is not merely an analogy. Pietrzycki–Stochel’s Theorem A.3 identifies representations of a commutative (C^*)-algebra with regular PVMs and UCP maps with regular semispectral measures, i.e. POVMs. Their Theorem B.1 and Corollary B.2 identify hyperrigidity with precisely this PVM/POVM uniqueness property. See Theorem A.3, PDF pp. 21–22; Theorem B.1, p. 22; Corollary B.2, p. 23. ([arXiv][2])

## Compression/reduction form

Identify (\mathbb R^2) with (\mathbb C), and write

[
N=X+iY,\qquad T=A+iB.
]

Suppose (X,Y) are commuting selfadjoint operators on (\mathcal K) with joint spectrum in (K), (P) is the projection onto (H), and

[
A=PX|_H,\qquad B=PY|_H.
]

The condition that (A) and (B) commute is exactly normality of (T). The moment identities for (x) and (y) are automatic, and the remaining identity is

[
P f(X,Y)|_H=f(A,B).
]

Then the target is exactly

[
\boxed{
P f(X,Y)|_H=f(A,B)
\quad\Longrightarrow\quad
PX=XP,\quad PY=YP,
}
\tag{Compression}
]

provided the quantification is over all such normal dilations.

Pietrzycki–Stochel, Lemma 8.1, PDF p. 15, proves the equivalence between hyperrigidity, semispectral-measure uniqueness, and the corresponding normal-dilation reduction property. In complex notation its conclusion is (PN=NP), which is equivalent to simultaneous reduction of (X) and (Y). ([arXiv][2])

The square-compression statement in the uploaded packet is exactly this formulation for (K=[0,1]^2).

---

# 3. Scalar Choquet uniqueness is automatic—but insufficient

Strict Jensen gives, for every (z\in K),

[
\left[
\int_Kt,d\mu(t)=z,\quad
\int_Kf(t),d\mu(t)=f(z)
\right]
\Longrightarrow
\mu=\delta_z.
]

Consequently,

[
\partial_{S_f}K=K.
]

Therefore (S_f) is a classical scalar Korovkin system. Davidson–Kennedy, Theorem 5.1, PDF p. 16, says that full Choquet boundary is equivalent to the following uniqueness:

> whenever (\pi:C(K)\to C(Y)) is a (*)-homomorphism and
> (\Phi:C(K)\to C(Y)) is positive with (\Phi|*{S_f}=\pi|*{S_f}), then (\Phi=\pi).

The crucial restriction is that the codomain (C(Y)) is commutative. 

Thus strict convexity proves

[
\text{scalar representing-measure uniqueness},
]

but hyperrigidity requires

[
\text{operator-valued representing-measure uniqueness}.
]

The latter is not a formal consequence of the former.

---

# 4. The Choquet-order fault line

On (C_f), define the Choquet order by

[
\sigma\prec_c\tau
\quad\Longleftrightarrow\quad
\int h,d\sigma\le\int h,d\tau
\quad
\text{for every continuous convex }h\text{ on }C_f.
]

A boundary measure is one maximal in this order. Since (C_f) is metrizable and

[
\operatorname{ex}C_f=\Gamma_f,
]

every finite positive measure supported on (\Gamma_f) is Choquet-maximal; this is Davidson–Kennedy, Theorem 2.5, PDF p. 7. 

Now take a finite positive measure (\mu) on (K). Its state-space pushforward is

[
\widehat\mu:=\gamma_*\mu,
]

which is supported on (\Gamma_f=\operatorname{ex}C_f). Hence (\widehat\mu) is automatically Choquet-maximal.

Davidson–Kennedy, Theorem 7.6, PDF p. 24, and Corollary 7.9, p. 26, identify the missing condition:

[
\pi_\mu|*{S_f}\text{ has the UEP}
\iff
\gamma**\mu
\text{ is maximal in the dilation order}.
]

Together with Arveson’s UEP characterization of hyperrigidity, Davidson–Kennedy Theorem 8.2, PDF p. 27, this yields

[
\boxed{
S_f\text{ is hyperrigid}
\iff
\gamma_*\mu
\text{ is dilation-maximal for every finite positive }\mu\text{ on }K.
}
\tag{Choquet/dilation}
]



Thus the exact situation is:

[
\underbrace{\gamma_*\mu\text{ Choquet-maximal}}*{\text{automatic from strict convexity}}
\quad\stackrel{?}{\Longrightarrow}\quad
\underbrace{\gamma**\mu\text{ dilation-maximal}}_{\text{equivalent to hyperrigidity}}.
]

Davidson–Kennedy explicitly pose this implication as Question 8.4, PDF pp. 27–28. 

Their Theorem 9.2, PDF p. 28, shows that the Choquet and dilation orders themselves do not coincide: for their measures (\mu,\nu_t),

[
\mu\prec_c\nu_t\iff t\le\frac34,
\qquad
\mu\prec_d\nu_t\iff t\le0.9.
]

That example does **not** disprove the desired maximality implication because its starting measure is not supported on the extreme boundary. 

---

# 5. Exact comparison of prior positive results

| Result                                                 | Exact hypotheses and conclusion                                                                                                                                                                                                                                                                                                       | Application to (S_f)                                                                                                                                                                                                                                |   |                                                             |      |                                                                                                                       |
| ------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | - | ----------------------------------------------------------- | ---- | --------------------------------------------------------------------------------------------------------------------- |
| **Brown, Corollaries 2.7 and 2.8**, PDF pp. 6–7        | One selfadjoint variable (H); (f) continuous and strictly convex on an interval containing (\sigma(H)); arbitrary Hilbert spaces. Equality under compression forces invariance, and UCP equality (\Phi(f(H))=f(\Phi(H))) forces multiplicativity on (C^*(H)). No operator-convexity or finite-dimensionality assumption. ([arXiv][3]) | Gives the full result when (K) has affine dimension at most (1), after parametrizing (K) by one coordinate. Does not treat a genuine two-dimensional polygon.                                                                                       |   |                                                             |      |                                                                                                                       |
| **Arveson, Proposition 4.4**, PDF pp. 12–13            | An arbitrary direct sum of representations whose restrictions have the UEP again has the UEP.                                                                                                                                                                                                                                         | Since strict Jensen gives UEP for every point evaluation, every **atomic PVM representation** has UEP. Thus the target holds whenever (F) is atomic, including every finite-dimensional (H). It does not handle diffuse direct integrals.           |   |                                                             |      |                                                                                                                       |
| **Arveson, Theorem 5.1**, PDF p. 13                    | If the generated separable (C^*)-algebra has countable spectrum and every irreducible representation is boundary, then the system is hyperrigid.                                                                                                                                                                                      | Not applicable to (C(K)) for a genuine polygon, whose spectrum is the uncountable space (K).                                                                                                                                                        |   |                                                             |      |                                                                                                                       |
| **Kleski, Theorem 3.1 and Corollary 3.3**, PDF pp. 5–7 | For nuclear/Type I algebras, factor or irreducible UEP hypotheses give uniqueness after applying a conditional expectation into (\pi(A)''); in Corollary 3.3 the UCP map itself must take values in (A'').                                                                                                                            | (C(K)) is Type I, but a general POVM map (C(K)\to B(H)) need not have range in (\pi(C(K))''). Therefore this is bicommutant-valued uniqueness, not the required arbitrary-(B(H)) uniqueness.                                                        |   |                                                             |      |                                                                                                                       |
| **Pietrzycki–Stochel, Theorem 2.1**, PDF p. 3          | If a commutative algebra is generated by (t), and the monomial set contains (t^{*p}t^q) and (t^{*r}t^r), with (p\ne q) and (p+q<2r), then—provided the monomials generate—the set is hyperrigid. ([arXiv][2])                                                                                                                         | Gives substantial special cases. If (t(z)=Lz+b) is an injective complex affine coordinate and (r\ge1) is an integer, then ({t,                                                                                                                      | t | ^{2r}}) is hyperrigid. Hence (S_f) is hyperrigid for [f(z)= | Lz+b | ^{2r}+\ell(z),] with (L) invertible real-linear and (\ell) affine. This includes every strictly convex quadratic (f). |
| **Scherer, Theorem 3.8**, PDF pp. 19–20                | For every compact convex (C\subset\mathbb R^2), (A(C)) is hyperrigid in (C(\operatorname{ex}C)).                                                                                                                                                                                                                                      | Apply it to (C_f), not to the original polygon. It works only when (\operatorname{affdim}C_f\le2), e.g. the one-dimensional (K) case. For a full-dimensional polygon and strictly convex (f), (\operatorname{affdim}C_f=3), so it does not apply.   |   |                                                             |      |                                                                                                                       |
| **Scherer, spectrahedra Theorem 3.7**, PDF pp. 15–17   | If (C\subset\mathbb R^k) is a compact spectrahedron and (\operatorname{ex}C) is closed, then (A(C)) is hyperrigid in (C(\operatorname{ex}C)). ([arXiv][4])                                                                                                                                                                            | Gives the exact target whenever (C_f) itself is a compact spectrahedron. Closedness of (\operatorname{ex}C_f=\Gamma_f) is automatic. The hypothesis is on (C_f), however—not on the original polygon (K), and not merely on a spectrahedral shadow. |   |                                                             |      |                                                                                                                       |

## The common misapplication of Scherer’s planar theorem

Applying Scherer’s (\mathbb R^2) theorem directly to the original polygon (K) yields

[
A(K)=\operatorname{span}{1,x,y}
\quad\text{hyperrigid in}\quad
C(\operatorname{ex}K).
]

For a polygon, (\operatorname{ex}K) is its finite vertex set. This is a theorem about functions on the vertices, not about

[
S_f\subset C(K).
]

The correct body is (C_f), whose extreme boundary is the entire graph (\Gamma_f\cong K). That body is generally three-dimensional.

---

# 6. Bregman-localization formulations

For (z\in\operatorname{relint}K), select a subgradient

[
p_z\in\partial f(z)
]

and define the supporting-plane defect

[
D_z(t)
======

f(t)-f(z)-\langle p_z,t-z\rangle.
]

Then

[
D_z\in S_f,\qquad D_z(t)\ge0,
]

and strict convexity gives

[
D_z(t)=0\iff t=z.
]

Let

[
\Phi(g)=\int_Kg,dE,\qquad
\rho(g)=\int_Kg,dF.
]

Moment equality on (S_f) gives

[
\Phi(D_z)=\rho(D_z).
\tag{B1}
]

If (C,J\subset K) are disjoint compact sets and one has uniform separation

[
c_{C,J}:=
\inf_{z\in C,;t\in J}D_z(t)>0,
\tag{B2}
]

then

[
D_z\ge c_{C,J}\mathbf 1_J
]

and hence

[
c_{C,J}E(J)\le \rho(D_z),\qquad z\in C.
\tag{B3}
]

The desired localization conclusion is

[
\boxed{
F(C)E(J)F(C)=0
\quad\text{for disjoint localized regions }C,J.
}
\tag{BLoc}
]

## Why this localization is sufficient

Scherer’s spectrahedra paper isolates the measure-theoretic local-to-global step. Theorem 3.6, PDF pp. 14–15, states that if for every distinct (s,t\in X) there are disjoint neighborhoods (U\ni s), (V\ni t) such that

[
F(U)E(V)F(U)=0,
]

then the UCP map equals the representation, hence (E=F). ([arXiv][4])

Therefore, for this problem, a Bregman argument does not need to reconstruct the entire POVM from scratch once it proves sufficiently uniform local annihilation; Scherer’s Theorem 3.6 supplies the local-to-global closure.

## Prior localization analogues

Brown’s Lemma 2.2, PDF pp. 3–4, is a one-dimensional affine-defect localization result. After subtracting an affine function from (f), Brown obtains an estimate of the form

[
\left|
P([a,x])Q([y,\infty))P([a,x])
\right|
\le
\frac{x-a}{y-x},
\qquad a<x<y<b.
]

It is not written in Bregman terminology, but it is the clear one-dimensional predecessor: a strictly convex affine defect controls off-diagonal spectral mass. ([arXiv][3])

Scherer’s planar proof gives a stronger exact annihilation statement for disjoint closed boundary arcs. His Theorem 3.6 in the (\mathbb R^2) paper, PDF pp. 16–17, proves

[
\pi(\chi_{p(I)})
\Phi(\chi_{p(J)})
\pi(\chi_{p(I)})=0
]

for disjoint closed parameter intervals (I,J). 

Neither source uses the full Bregman–Douglas–Minty–Riesz mechanism described in the uploaded packet.

---

# 7. Status of the uploaded Bregman proof

The uploaded argument proposes the stronger compact localization lemma

[
F(C)E(J)F(C)=0
]

for (C) compactly contained in the relative interior of a face and (J) disjoint. Its proposed mechanism is:

[
\text{uniform Bregman separation}
\Longrightarrow
\text{Douglas factorization}
\Longrightarrow
\text{finite reciprocal-Bregman energy},
]

followed by

[
D_z(t)+D_t(z)
=============

\langle p_t-p_z,t-z\rangle,
]

[
D_z(t)
\le
\frac12
\left|
(t,p_t)-(z,p_z)
\right|^2,
]

Minty parametrization of the selected subgradient graph, an (O(r^{-2})) covering estimate, and divergence of the critical inverse-square Riesz energy. It then treats faces and reconstructs the full PVM/POVM equality. 

I found **no prior hyperrigidity paper using this particular Bregman–Douglas–Minty–energy argument**. If all of its load-bearing steps are correct, it goes genuinely beyond the cited literature: it exploits the **two-dimensional parameterization of the extreme graph**, despite the fact that the affine state space (C_f) is three-dimensional.

It should therefore be described as a **proposed new proof**, not as an application of an existing theorem. In particular:

* Brown supplies the one-dimensional affine-defect prototype.
* Scherer supplies exact planar localization and an abstract local-to-global theorem.
* Neither supplies the reciprocal-Bregman energy lemma needed for the full polygon result.
* Scherer’s spectrahedra theorem supplies the conclusion only when (C_f) has the extra spectrahedral structure.

---

# 8. Final coverage map

For a full-dimensional compact convex polygon (K):

[
\begin{array}{c|c}
\text{Hypothesis} & \text{Status}\ \hline
f\text{ arbitrary continuous strictly convex}
&
\textbf{No prior theorem found covering all cases}
[2mm]
F\text{ atomic PVM}
&
\textbf{Yes},\ \text{by strict Jensen + Arveson direct sums}
[2mm]
\dim H<\infty
&
\textbf{Yes},\ \text{because }F\text{ is finite atomic}
[2mm]
f\text{ strictly convex quadratic}
&
\textbf{Yes},\ \text{by Pietrzycki--Stochel}
[2mm]
f(z)=|Lz+b|^{2r}+\ell(z),\ r\in\mathbb N
&
\textbf{Yes},\ \text{by Pietrzycki--Stochel}
[2mm]
C_f\text{ is a compact spectrahedron}
&
\textbf{Yes},\ \text{by Scherer}
[2mm]
\operatorname{affdim}K\le1
&
\textbf{Yes},\ \text{by Brown or Scherer's }\mathbb R^2\text{ theorem}
[2mm]
\text{general diffuse representation and arbitrary }f
&
\textbf{The unresolved part in the prior literature found}
\end{array}
]

The exact conceptual gap is therefore:

[
\boxed{
\text{strict Jensen / Choquet maximality}
\quad\not!!\stackrel{\text{known generally}}{\Longrightarrow}\quad
\text{diffuse dilation maximality}.
}
]

The proposed Bregman localization argument is aimed precisely at closing that gap.

[1]: https://arxiv.org/html/2405.20814v4 "Hyperrigidity I: singly generated commutative ^∗-algebras"
[2]: https://arxiv.org/pdf/2405.20814 "Hyperrigidity I: singly generated commutative $C^*$-algebras"
[3]: https://arxiv.org/pdf/1410.6800 "arXiv:1410.6800v3  [math.FA]  18 May 2016"
[4]: https://arxiv.org/pdf/2601.16075 "The Hyperrigidity Conjecture for Spectrahedra"
