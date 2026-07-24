## Conclusion

Assume that “polygon” means a **compact convex polygon**. For a full-dimensional polygon (K\subset\mathbb R^{2}) and an arbitrary continuous strictly convex (f), I found:

1. An exact classical result proving that
   [
   \operatorname{Ch}\bigl(\operatorname{span}{1,x,y,f}\bigr)=K,
   ]
   hence scalar Korovkin rigidity.

2. Exact operator-hyperrigidity results in the one-dimensional case, for special quadratic/radial (f), and when an associated three-dimensional convex body is spectrahedral.

3. **No prior theorem with exactly the stated hypotheses**—full-dimensional polygon and arbitrary continuous strictly convex (f)—that proves operator hyperrigidity, POVM/PVM uniqueness, or the corresponding compression-reduction theorem.

The decisive point is that the appropriate affine state space is generally **three-dimensional**, not the original planar polygon. Thus the recent theorem for affine systems on compact convex subsets of (\mathbb R^{2}) does not apply. The strongest currently available general implication is the 2026 spectrahedral theorem, but it requires an additional LMI hypothesis not implied by strict convexity.

Confidence in the theorem-to-theorem hypothesis comparison is **high**. Confidence that no obscure source has been missed is **moderate**.

---

## 1. The correct affine state-space reduction

Put
[
S_f=\operatorname{span}_{\mathbb C}{1,x,y,f}\subset C(K)
]
and define
[
\gamma_f:K\longrightarrow\mathbb R^{3},\qquad
\gamma_f(z)=\bigl(z_1,z_2,f(z)\bigr),
]
[
L_f=\operatorname{conv}\gamma_f(K)\subset\mathbb R^{3}.
]

A state on (S_f) is determined by
[
\left(\varphi(x),\varphi(y),\varphi(f)\right),
]
and, representing (\varphi) by a probability measure on (K), this triple lies in (L_f). Conversely, every point of (L_f) arises in this way. Thus (L_f) is the state space of (S_f), and the map
[
a+bx+cy+df
\longmapsto
\left[(u,s)\mapsto a+bu_1+cu_2+ds\right]
]
identifies (S_f) with the affine function system (A(L_f)). This is the finite-dimensional instance of Kadison’s affine representation of a function system; Davidson–Kennedy use precisely this passage in Theorem 2.2 and prove invariance of the unique-extension property under it in Theorem 7.8, PDF p. 26. 

Strict convexity gives
[
\operatorname{ex}L_f=\gamma_f(K).
]

Indeed, suppose that (\gamma_f(z)) is represented by a probability measure (\mu) on (K). Then
[
z=\int_K t,d\mu(t),
\qquad
f(z)=\int_K f(t),d\mu(t).
]
Equality in strict Jensen forces (\mu=\delta_z). Hence every graph point is extreme. Conversely, every extreme point of the convex hull of the compact set (\gamma_f(K)) belongs to (\gamma_f(K)).

Consequently,
[
S_f\subset C(K)\text{ is hyperrigid}
\quad\Longleftrightarrow\quad
A(L_f)\subset C(\operatorname{ex}L_f)
\text{ is hyperrigid}.
\tag{1}
]

There is also the useful description
[
L_f=
\left{(z,s):
z\in K,\
f(z)\le s\le \operatorname{cav}*{K}f(z)
\right},
\tag{2}
]
where (\operatorname{cav}*{K}f) is the least concave majorant of (f).

### The dimension obstruction

When (K) has nonempty interior and (f) is strictly convex,
[
\dim_{\mathrm{aff}}L_f=3.
\tag{3}
]
Otherwise the graph of (f) would lie in an affine plane
[
\alpha+\beta_1x+\beta_2y+\delta f(x,y)=0.
]
If (\delta=0), then (K) lies in a line; if (\delta\ne0), then (f) is affine. Both contradict the hypotheses.

This is why a theorem about (A(L)) for (L\subset\mathbb R^{2}) does not settle the target problem: the relevant (L) is (L_f\subset\mathbb R^{3}).

---

## 2. Exact comparison of the prior theorems

| Result                                                          | Exact hypotheses                                                                                                             | Conclusion                                                                                                        | Relation to the target                                                                                                                                                                                        |   |                                                                                                                                |
| --------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | - | ------------------------------------------------------------------------------------------------------------------------------ |
| **Hodiş–Măduţa, Theorem 2.3, journal p. 341**                   | (K) compact metrizable convex in a locally convex space; (f\in C(K)) strictly convex                                         | (\operatorname{Ch}(\operatorname{span}(A(K),f))=K); hence the space is a scalar Korovkin space                    | **Exact scalar hypotheses**, but not operator hyperrigidity. The paper credits Bauer–Leha–Papadopoulou for finite-dimensional (K).                                                                            |   |                                                                                                                                |
| **Kleski, Corollary 3.3, journal p. 1113**                      | A separable operator system generating a Type I (C^*)-algebra; every irreducible representation is boundary                  | A UCP map into the represented bicommutant (A'') fixing the system fixes (A)                                      | Applies to a commutative (C(K)) after the scalar-boundary theorem, but is the weaker (A'')-valued Korovkin property, not UEP for arbitrary representations and arbitrary (B(H))-valued UCP maps. ([[arXiv](https://arxiv.org/pdf/1310.7266)][1]) |   |                                                                                                                                |
| **Brown, Corollary 2.7, journal p. 556; Corollary 2.8, p. 557** | One self-adjoint operator with spectrum in an interval; continuous strictly convex (f)                                       | Compression equality forces the subspace to reduce the operator; UCP equality forces multiplicativity on (C^*(H)) | Settles the target when (K) is a segment, not when (K) has planar interior. ([[arXiv](https://arxiv.org/pdf/1410.6800)][2])                                                                                                                      |   |                                                                                                                                |
| **Pietrzycki–Stochel, Corollary 5.1, arXiv v1 PDF p. 21**       | (g\in C([a,b]))                                                                                                              | ({\xi,g}) is hyperrigid iff (g) or (-g) is strictly convex                                                        | Exact complete one-dimensional characterization. It does not assert the corresponding planar result. ([[arXiv](https://arxiv.org/pdf/2405.20814v1)][3])                                                                                             |   |                                                                                                                                |
| **Scherer, Theorem 3.8, PDF p. 19**                             | (L\subset\mathbb R^{2}) compact convex                                                                                       | (A(L)) is hyperrigid in (C(\operatorname{ex}L))                                                                   | Applies only when (\dim_{\mathrm{aff}}L_f\le2). For a genuine two-dimensional (K) and nonaffine (f), (3) gives (\dim L_f=3). ([[arXiv](https://arxiv.org/pdf/2411.11709?utm_source=chatgpt.com)][4])                                                                     |   |                                                                                                                                |
| **Pietrzycki–Stochel, Theorem 2.1, current v4 PDF p. 3**        | (A=C^*(t)) commutative; the monomial set contains (t^{*p}t^q) and (t^{*r}t^r), with (p\ne q) and (p+q<2r), and generates (A) | The monomial set is hyperrigid                                                                                    | Gives the target for special radial powers such as (f=                                                                                                                                                        | t | ^{2r}), after an invertible affine change of planar coordinates. It does not cover arbitrary strictly convex (f). ([arXiv][5]) |
| **Scherer, Theorem 3.7, PDF p. 15; proof pp. 15–17**            | (L\subset\mathbb R^k) a compact **spectrahedron**, with (\operatorname{ex}L) closed                                          | (A(L)) is hyperrigid in (C(\operatorname{ex}L))                                                                   | Directly proves the target if the additional hypothesis “(L_f) is a spectrahedron” holds. Here (\operatorname{ex}L_f=\gamma_f(K)) is automatically closed. ([[arXiv](https://arxiv.org/pdf/2601.16075)][6])                                       |   |                                                                                                                                |

The March 29, 2026 revision of Pietrzycki–Stochel still describes the general commutative problem as open, while the planar and spectrahedral theorems establish particular geometric classes. ([[arXiv](https://arxiv.org/abs/2405.20814?utm_source=chatgpt.com)][7])

---

## 3. Scalar Choquet rigidity is exact—but strictly weaker

Hodiş–Măduţa’s theorem can be seen directly in the present notation. Suppose that (\mu) is a probability measure on (K) satisfying
[
\int x,d\mu=z_1,\qquad
\int y,d\mu=z_2,\qquad
\int f,d\mu=f(z).
]
The first two equalities say
[
z=\int t,d\mu(t).
]
Jensen gives
[
f(z)\le \int f(t),d\mu(t),
]
and equality combined with strict convexity forces (\mu=\delta_z). Therefore every point evaluation is uniquely determined among scalar states by (1,x,y,f).

Equivalently,
[
\operatorname{Ch}(S_f)=K.
\tag{4}
]

Hodiş–Măduţa’s Theorem 2.3 proves this for every compact metrizable convex (K), with no differentiability assumption on (f), and concludes that (S_f) is a scalar Korovkin space. Their Remark 2.5 and Example 2.6, also on p. 341, show that for nonsmooth strictly convex (f), the peak-point set can nevertheless be smaller than (K). Thus one cannot silently replace “Choquet point” by “point exposed by a single function in (S_f).” 

Operator hyperrigidity asks for much more: uniqueness not merely for scalar probability measures representing one point, but for operator-valued measures representing an arbitrary, possibly diffuse, spectral representation.

---

## 4. Exact POVM/PVM uniqueness formulation

Identify (K\subset\mathbb R^{2}) with a compact subset of (\mathbb C) using
[
\zeta=x+iy.
]
The operator system generated by ({\zeta,f}) is exactly
[
\operatorname{span}_{\mathbb C}{1,\zeta,\bar\zeta,f}
====================================================

\operatorname{span}_{\mathbb C}{1,x,y,f}.
]

Let (F) be a regular projection-valued measure on (K), and let (E) be a normalized regular positive operator-valued measure on the same Hilbert space. Define
[
\pi_F(g)=\int_Kg,dF,
\qquad
\Phi_E(g)=\int_Kg,dE.
]
Then (S_f) is hyperrigid precisely when
[
\begin{aligned}
\int_Kx,dE&=\int_Kx,dF,\
\int_Ky,dE&=\int_Ky,dF,\
\int_Kf,dE&=\int_Kf,dF
\end{aligned}
\quad\Longrightarrow\quad
E=F.
\tag{5}
]

Pietrzycki–Stochel’s Theorem 2.2, arXiv v1 PDF pp. 5–6, gives this equivalence for a finite or countable generating family (G\subset C(X)). The same theorem also gives the equivalent normal-dilation/reducing-subspace formulation. ([[arXiv](https://arxiv.org/pdf/2405.20814v1)][3])

### Compression formulation

Let (\mathsf E) be a PVM on (K) acting on (\mathcal L), let (V:H\to\mathcal L) be an isometry, and set
[
E(S)=V^*\mathsf E(S)V.
]
Put
[
X=\int_Kx,d\mathsf E,\qquad
Y=\int_Ky,d\mathsf E.
]
Let
[
A=V^*XV,\qquad B=V^*YV,
]
and suppose (A,B) commute. Let (F) be their joint PVM. Then
[
V^*f(X,Y)V=f(A,B)
]
is exactly the last equality in (5), while the (x)- and (y)-moment equalities hold by definition.

Thus POVM/PVM uniqueness gives (E=F). In particular it gives equality for (x^2) and (y^2):
[
V^*X^2V=A^2,\qquad V^*Y^2V=B^2.
]
Writing (P=VV^*),
[
V^*X^2V-A^2
===========

# V^*X(I-P)XV

\bigl((I-P)XV\bigr)^*\bigl((I-P)XV\bigr).
]
Hence ((I-P)XP=0), and self-adjointness gives (PX(I-P)=0); therefore (PX=XP). The same argument gives (PY=YP).

Conversely, if (P) reduces (X,Y), then all compressed functional-calculus identities hold. Naimark dilation shows that every normalized POVM arises from such a compression. Therefore (5), the UEP formulation, and the compression-reduction statement are genuinely equivalent—not merely analogous.

For a polygon described by affine inequalities
[
K={z:\ell_j(z)\ge0,\ 1\le j\le m},
]
joint spectrum remains in (K) after compression whenever (A,B) commute, since
[
\ell_j(A,B)=V^*\ell_j(X,Y)V\ge0.
]

---

## 5. Unique extension and Choquet-order formulations

Davidson–Kennedy prove that an operator system is hyperrigid exactly when every representation has the unique-extension property—Theorem 8.2, PDF p. 27. 

For (S_f), this says:

> For every representation (\pi:C(K)\to B(H)), the only UCP map
> (\Phi:C(K)\to B(H)) satisfying
> [
> \Phi(1)=I,\quad
> \Phi(x)=\pi(x),\quad
> \Phi(y)=\pi(y),\quad
> \Phi(f)=\pi(f)
> ]
> is (\Phi=\pi).

Now pass to (L_f). For a finite positive measure (\mu) on (K), let
[
\widehat\mu=(\gamma_f)_*\mu,
]
which is supported on
[
\operatorname{ex}L_f=\gamma_f(K).
]

Because (L_f) is compact metrizable and its extreme boundary is closed, every such (\widehat\mu) is maximal in the classical Choquet order. Davidson–Kennedy define
[
\alpha\prec_c\beta
\quad\Longleftrightarrow\quad
\int h,d\alpha\le\int h,d\beta
\quad
\text{for every continuous convex }h,
]
and characterize boundary measures in Theorem 2.5, PDF pp. 6–7. 

They introduce a different, operator-theoretic dilation order (\prec_d). Proposition 6.4, PDF p. 19, says that
[
\alpha\prec_d\beta
]
is equivalent to the existence of a positive map
[
\Phi:C(L_f)\to B(L^2(\alpha))
]
which fixes (A(L_f)) and realizes (\beta) as the vector state of (\Phi). 

Theorem 7.6, together with Theorem 7.8 and Corollary 7.9, yields
[
\pi_\mu\text{ has UEP for }S_f
\quad\Longleftrightarrow\quad
\widehat\mu\text{ is maximal in the dilation order on }L_f.
\tag{6}
]
The concrete-system/state-space transfer is Theorem 7.8, and the measure formulation is Corollary 7.9, PDF p. 26. 

Consequently,
[
\boxed{
S_f\text{ is hyperrigid}
\iff
(\gamma_f)_*\mu
\text{ is }\prec_d\text{-maximal for every }\mu\in M^+(K).
}
\tag{7}
]

Strict convexity proves that every ((\gamma_f)_*\mu) is already (\prec_c)-maximal. The unresolved operator step is therefore
[
\prec_c\text{-maximal}
\quad\stackrel{?}{\Longrightarrow}\quad
\prec_d\text{-maximal}
]
for this special three-dimensional graph hull.

Davidson–Kennedy formulate this issue explicitly in Question 8.4, PDF pp. 27–28. Their Theorem 9.2, p. 28, also shows that the two orders do not coincide in general: for their measures (\mu,\nu_t),
[
\mu\prec_c\nu_t\iff t\le\frac34,
\qquad
\mu\prec_d\nu_t\iff t\le0.9.
]
This is not a counterexample to the present graph-hull problem, but it proves that classical Choquet domination cannot simply be identified with operator dilation domination. 

---

## 6. The Bregman-localization formulation

For
[
z\in\operatorname{relint}K,
\qquad
p_z\in\partial f(z),
]
define the supporting-plane defect
[
D_z(t)
======

f(t)-f(z)-\langle p_z,t-z\rangle.
\tag{8}
]
Then
[
D_z\in S_f,\qquad D_z\ge0,
\qquad D_z(t)=0\iff t=z.
\tag{9}
]

For compact
[
C\Subset\operatorname{relint}K
]
and compact (J\subset K) with (C\cap J=\varnothing), local boundedness of the subdifferential gives a bounded measurable selection (z\mapsto p_z), and compactness gives
[
c_{C,J}
=======

\inf_{\substack{z\in C\t\in J}}D_z(t)>0.
\tag{10}
]

Suppose (E) is a POVM and (F) is a PVM agreeing on (S_f). Then
[
c_{C,J}E(J)
\le
\int_KD_z,dE
============

\int_KD_z,dF.
]
Compressing to (F(C)H) gives
[
c_{C,J}F(C)E(J)F(C)
\le
F(C)\left(\int_KD_z,dF\right)F(C).
\tag{11}
]

This is the natural Bregman localization inequality. Its limitation is exact: the right-hand side of (11) is generally not zero, because (D_z(t)>0) for (t\in C\setminus{z}). A single supporting plane therefore does not prove
[
F(C)E(J)F(C)=0.
\tag{12}
]

### The closest prior localization theorem

Scherer’s spectrahedral paper proves the following abstract reconstruction principle:

> If for every pair of distinct points (u,v) there are disjoint neighborhoods (U,V) satisfying
> [
> \pi(\chi_U)\Phi(\chi_V)\pi(\chi_U)=0,
> ]
> then (\Phi=\pi).

This is Theorem 3.6, PDF p. 14. ([[arXiv](https://arxiv.org/pdf/2601.16075)][6])

Thus (12), in a sufficiently local form, is already known to imply complete POVM/PVM uniqueness. In the spectrahedral case, Scherer derives the required block vanishing from LMI and face geometry and then invokes Theorem 3.6. But that paper does **not** derive block vanishing from the Bregman family (8) for an arbitrary continuous strictly convex (f).

### Where the uploaded proof would add something genuinely new

The uploaded audit packet proposes the chain
[
\text{Bregman inequalities}
\Longrightarrow
\text{Douglas factorization}
\Longrightarrow
\text{finite reciprocal-Bregman energy}
]
[
\Longrightarrow
\text{inverse-square energy on a Minty graph}
\Longrightarrow
\text{critical (2)-Riesz-energy divergence}
\Longrightarrow
F(C)E(J)F(C)=0.
]
It then proposes reconstruction across the interior, edges and vertices of the polygon. The packet itself identifies this as a proposed new argument that has not undergone independent verification, rather than as a theorem already present in the literature. 

Among the sources located, I found no earlier use of this Douglas–Bregman–Minty–Riesz mechanism to prove hyperrigidity for a full-dimensional planar spectrum.

Hodiş–Măduţa’s nonsmooth example is also relevant here: strict convexity alone need not supply a global peak function from a supporting affine plane at every boundary point. The restriction to compact subsets of relative interiors, followed by separate exposed-face arguments, is therefore not merely cosmetic. 

---

## 7. Cases in which prior results do imply the desired conclusion

### 7.1 (K) is a segment

After an affine parametrization (K\cong[a,b]),
[
S_f\cong\operatorname{span}{1,\xi,g},
]
where (g) is strictly convex. Brown’s compression theorem and Pietrzycki–Stochel’s Corollary 5.1 give hyperrigidity, POVM uniqueness and reduction. ([[arXiv](https://arxiv.org/pdf/1410.6800)][2])

Restricting (f) to one edge of a polygon therefore gives hyperrigidity **on that edge**, once the POVM has first been shown to be supported there. It does not prevent diffuse coupling between different faces or between the boundary and interior.

### 7.2 The graph hull (L_f) is spectrahedral

If there is a symmetric linear pencil
[
Q(u,s)=Q_0+u_1Q_1+u_2Q_2+sQ_3
]
such that
[
L_f={(u,s):Q(u,s)\succeq0},
]
then (\operatorname{ex}L_f=\gamma_f(K)) is closed and Scherer’s Theorem 3.7 applies. By (1), (S_f) is hyperrigid. ([[arXiv](https://arxiv.org/pdf/2601.16075)][6])

The hypothesis must be that (L_f) itself is a spectrahedron in its affine hull. Merely being a spectrahedral shadow is not the stated hypothesis of Theorem 3.7.

Strict convexity does not imply this LMI property. For example, one can choose a strictly convex (f) with a transcendental, non-semialgebraic graph; the lower boundary of (L_f) is then that graph, whereas every spectrahedron is semialgebraic.

### 7.3 Strictly convex quadratic (f)

Suppose
[
f(z)=z^{T}Qz+b^{T}z+c,
\qquad Q>0.
]
After completing the square,
[
f(z)=|\tau(z)|^{2}+c'
]
for an invertible affine complex coordinate
[
\tau(z)=\ell_1(z)+i\ell_2(z).
]
Since (\tau) separates points of (K), it generates (C(K)). Taking
[
\Xi={(0,1),(1,1)}
]
in Pietrzycki–Stochel’s Theorem 2.1 shows that
[
{\tau,\tau^*\tau}
]
is hyperrigid. Its generated operator system is exactly (S_f). ([[arXiv](https://arxiv.org/pdf/2405.20814v4)][5])

There is also a direct multiplicative-domain proof. If a UCP map (\Phi) agrees with a representation (\pi) on (S_f), then
[
0
=

\Phi(\ell_1^2+\ell_2^2)
-\pi(\ell_1^2+\ell_2^2)
]
[
=

\bigl[\Phi(\ell_1^2)-\Phi(\ell_1)^2\bigr]
+
\bigl[\Phi(\ell_2^2)-\Phi(\ell_2)^2\bigr].
]
Both bracketed terms are positive by Kadison’s inequality, so both vanish. Hence (\ell_1,\ell_2) belong to the multiplicative domain of (\Phi); since they generate (C(K)), (\Phi=\pi).

The same monomial theorem covers
[
f(z)=|\tau(z)|^{2r}+\text{affine term},
\qquad r\in\mathbb N,
]
using (\Xi={(0,1),(r,r)}).

---

## 8. Final theorem-status statement

For a full-dimensional compact convex polygon (K\subset\mathbb R^{2}):

[
\boxed{
\text{continuous strict convexity of }f
\text{ is known to imply full scalar Choquet/Korovkin rigidity.}
}
]

It is also known to imply operator hyperrigidity when:

* (K) is one-dimensional;
* (f) belongs to certain monomial/radial classes, including every strictly convex quadratic up to affine terms and affine coordinate changes; or
* the graph hull
  [
  L_f=\operatorname{conv}{(z,f(z)):z\in K}
  ]
  is a compact spectrahedron.

But:

[
\boxed{
\text{No prior result located proves hyperrigidity for arbitrary continuous
strictly convex }f\text{ on a full-dimensional polygon.}
}
]

Equivalently, no located prior result establishes under only those hypotheses that agreement of a POVM and a PVM on (1,x,y,f) forces equality, or that the corresponding compression equality forces simultaneous reduction of the commuting pair. The proposed Bregman–Minty localization argument in the uploaded packet targets exactly this remaining operator-level step.

[1]: https://arxiv.org/pdf/1310.7266 "https://arxiv.org/pdf/1310.7266"
[2]: https://arxiv.org/pdf/1410.6800 "arXiv:1410.6800v3  [math.FA]  18 May 2016"
[3]: https://arxiv.org/pdf/2405.20814v1 "arXiv:2405.20814v1  [math.OA]  31 May 2024"
[4]: https://arxiv.org/pdf/2411.11709?utm_source=chatgpt.com "The Hyperrigidity Conjecture for compact convex sets in R"
[5]: https://arxiv.org/pdf/2405.20814v4 "Hyperrigidity I: singly generated commutative $C^*$-algebras"
[6]: https://arxiv.org/pdf/2601.16075 "The Hyperrigidity Conjecture for Spectrahedra"
[7]: https://arxiv.org/abs/2405.20814?utm_source=chatgpt.com "Hyperrigidity I: singly generated commutative $C^*$-algebras"
