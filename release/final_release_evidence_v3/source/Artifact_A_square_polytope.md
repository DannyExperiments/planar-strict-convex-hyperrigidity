# A. Exact theorem

### Theorem — equality under compression for a strictly convex two-variable functional calculus

Let \(\mathcal K\) be a Hilbert space. Let \(X,Y\in B(\mathcal K)\) be commuting positive contractions, let \(P\) be an orthogonal projection, and set

\[
H=\operatorname{ran}P,
\qquad
A=PXP|_H,
\qquad
B=PYP|_H.
\]

Assume \(A\) and \(B\) commute. Let

\[
f:[0,1]^2\longrightarrow \mathbb R
\]

be continuous and strictly convex. Suppose

\[
P f(X,Y)P|_H=f(A,B).
\]

Then \(H\) reduces both \(X\) and \(Y\); equivalently,

\[
\boxed{PX=XP,\qquad PY=YP.}
\]

No finite-rank, separability, smoothness, or strict differentiability assumption is required.

---

# B. Supporting lemmas

Throughout, a POVM is countably additive in the weak operator topology. All scalar measures arising from POVMs on compact metric spaces are finite regular Borel measures.

## Lemma 1 — elementary positivity facts

Let \(T\ge 0\) and let \(R\) be an orthogonal projection.

1. If
   \[
   RTR=0,
   \]
   then
   \[
   TR=RT=0.
   \]

2. If \(0\le T\le I\) and
   \[
   RTR=R,
   \]
   then
   \[
   TR=RT=R.
   \]

3. If \(T\ge0\) and \(TR_j=0\) for each member of a finite family of projections \(\{R_j\}\), then
   \[
   T\left(\bigvee_j R_j\right)=0.
   \]

### Proof

For the first statement,

\[
0=RTR=(T^{1/2}R)^*(T^{1/2}R),
\]

so \(T^{1/2}R=0\), hence \(TR=0\). Taking adjoints gives \(RT=0\).

For the second statement, apply the first part to \(I-T\ge0\):

\[
R(I-T)R=0.
\]

Thus \((I-T)R=R(I-T)=0\), which is equivalent to \(TR=RT=R\).

For the third statement, \(T^{1/2}R_j=0\) for every \(j\). Hence \(T^{1/2}\) vanishes on the algebraic span of the ranges of the \(R_j\), and therefore on its closure, which is the range of \(\bigvee_jR_j\). ∎

---

## Lemma 2 — monotonicity for operator-valued measures

Let \(E\) be a POVM on a measurable space.

1. If \(S\subseteq T\), then
   \[
   0\le E(S)\le E(T).
   \]

2. If \(S_n\uparrow S\), then
   \[
   E(S_n)\longrightarrow E(S)
   \]
   strongly.

3. If \(g,h\) are bounded real Borel functions with \(g\le h\), then
   \[
   \int g\,dE\le \int h\,dE.
   \]

### Proof

The first and third statements follow from positivity. For the second, \(E(S_n)\) is an increasing bounded sequence of positive operators. Its strong limit \(T\) satisfies

\[
\langle T\xi,\xi\rangle
=
\lim_n \langle E(S_n)\xi,\xi\rangle
=
\langle E(S)\xi,\xi\rangle
\]

for every \(\xi\), by scalar monotone convergence. Hence \(T=E(S)\). ∎

---

## Lemma 3 — subgradients on a compact interior set

Let \(K\subseteq\mathbb R^d\) be compact and convex with nonempty interior, and let \(g:K\to\mathbb R\) be continuous and convex. Let \(C\subseteq\operatorname{int}K\) be compact.

For \(z\in\operatorname{int}K\), define the subdifferential relative to the common domain \(K\) by

\[
\partial_K g(z)
=
\left\{
p\in\mathbb R^d:
g(t)\ge g(z)+\langle p,t-z\rangle
\text{ for all }t\in K
\right\}.
\]

Then:

1. \(\partial_Kg(z)\) is nonempty for every \(z\in\operatorname{int}K\).
2. The union
   \[
   \bigcup_{z\in C}\partial_Kg(z)
   \]
   is bounded.
3. The graph
   \[
   \Gamma_C
   =
   \{(z,p):z\in C,\ p\in\partial_Kg(z)\}
   \]
   is compact.
4. There exists a bounded Borel map
   \[
   p:C\to\mathbb R^d
   \]
   such that
   \[
   p(z)\in\partial_Kg(z)
   \]
   for every \(z\in C\).

### Proof

#### Existence

Fix \(z\in\operatorname{int}K\). Consider the epigraph

\[
\operatorname{epi}g
=
\{(t,r)\in K\times\mathbb R:r\ge g(t)\}.
\]

It is a closed convex subset of \(\mathbb R^{d+1}\). The point \((z,g(z))\) lies on its boundary. By the finite-dimensional supporting-hyperplane theorem, there is a nonzero \((q,\alpha)\in\mathbb R^d\times\mathbb R\) such that

\[
\langle q,t-z\rangle+\alpha(r-g(z))\ge0
\]

for all \((t,r)\in\operatorname{epi}g\).

Since \(r\) may tend to \(+\infty\), necessarily \(\alpha\ge0\). If \(\alpha=0\), then

\[
\langle q,t-z\rangle\ge0
\]

for all \(t\in K\). Because \(z\) is an interior point, this forces \(q=0\), contradicting \((q,\alpha)\ne0\). Thus \(\alpha>0\).

Setting

\[
p=-\frac q\alpha
\]

and taking \(r=g(t)\) gives

\[
g(t)\ge g(z)+\langle p,t-z\rangle.
\]

Hence \(p\in\partial_Kg(z)\).

#### Uniform boundedness

Since \(C\subseteq\operatorname{int}K\) is compact, there is \(r>0\) such that

\[
z+ru\in K
\]

whenever \(z\in C\) and \(\|u\|\le1\).

Let

\[
\operatorname{osc}_K g
=
\max_Kg-\min_Kg.
\]

If \(p\in\partial_Kg(z)\) and \(\|u\|=1\), then

\[
g(z+ru)\ge g(z)+r\langle p,u\rangle
\]

and

\[
g(z-ru)\ge g(z)-r\langle p,u\rangle.
\]

Therefore

\[
|\langle p,u\rangle|
\le
\frac{\operatorname{osc}_K g}{r}.
\]

Taking the supremum over unit \(u\) gives a uniform bound on \(\|p\|\).

#### Compactness of the graph

The graph is bounded by the preceding argument. It is closed: if

\[
z_n\to z,\qquad p_n\to p,\qquad p_n\in\partial_Kg(z_n),
\]

then for every \(t\in K\),

\[
g(t)\ge g(z_n)+\langle p_n,t-z_n\rangle.
\]

Passing to the limit gives

\[
g(t)\ge g(z)+\langle p,t-z\rangle.
\]

Thus \(p\in\partial_Kg(z)\). Hence \(\Gamma_C\) is compact.

#### Borel selection

Write

\[
S_z=\partial_Kg(z).
\]

Choose a countable dense sequence \(\{q_m\}_{m\ge1}\) in \(\mathbb R^d\). For fixed \(m\), define

\[
d_m(z)=\operatorname{dist}(q_m,S_z).
\]

This is Borel. Indeed, it is lower semicontinuous: if \(z_n\to z\), pass to a subsequence on which \(d_m(z_n)\) tends to the liminf and choose minimizers \(s_n\in S_{z_n}\). Compactness of \(\Gamma_C\) yields a further subsequence \(s_n\to s\in S_z\), and therefore

\[
d_m(z)\le \|q_m-s\|
=
\liminf_n d_m(z_n).
\]

Let \(\varepsilon_n=2^{-n}\). Choose \(s_1(z)\) to be the first \(q_m\) satisfying

\[
d_m(z)<\varepsilon_1.
\]

Inductively, after defining the Borel map \(s_n\), choose \(s_{n+1}(z)\) to be the first \(q_m\) satisfying

\[
d_m(z)<\varepsilon_{n+1}
\]

and

\[
\|q_m-s_n(z)\|<\varepsilon_n+2\varepsilon_{n+1}.
\]

Such a \(q_m\) exists: choose \(a\in S_z\) with

\[
\|a-s_n(z)\|<\varepsilon_n,
\]

then choose \(q_m\) sufficiently close to \(a\).

Each \(s_n\) is Borel because it is obtained by taking the first index in a countable family of Borel conditions. Moreover,

\[
\|s_{n+1}(z)-s_n(z)\|
<
\varepsilon_n+2\varepsilon_{n+1}
=
2\varepsilon_n.
\]

Thus \(s_n(z)\) converges for every \(z\), uniformly in the Cauchy estimate. Let

\[
p(z)=\lim_n s_n(z).
\]

The pointwise limit of Borel maps is Borel. Since

\[
\operatorname{dist}(s_n(z),S_z)<\varepsilon_n,
\]

and \(S_z\) is closed, \(p(z)\in S_z\). The selector is bounded because its values lie in the bounded union of the subdifferentials. ∎

---

## Lemma 4 — uniform Bregman separation

Under the hypotheses of Lemma 3, suppose \(g\) is strictly convex. Let \(C\subseteq\operatorname{int}K\) and \(J\subseteq K\) be compact and disjoint.

Then there exists \(c>0\) such that

\[
g(t)-g(z)-\langle p,t-z\rangle\ge c
\]

for every \(z\in C\), every \(p\in\partial_Kg(z)\), and every \(t\in J\).

### Proof

For \(z\in C\), \(p\in\partial_Kg(z)\), and \(t\in K\), put

\[
\Delta(z,p,t)
=
g(t)-g(z)-\langle p,t-z\rangle.
\]

This is nonnegative.

It is strictly positive if \(t\ne z\). Indeed, if \(\Delta(z,p,t)=0\), then for \(0<\lambda<1\), the subgradient inequality and convexity give

\[
g((1-\lambda)z+\lambda t)
\ge
g(z)+\lambda\langle p,t-z\rangle
\]

and

\[
g((1-\lambda)z+\lambda t)
\le
(1-\lambda)g(z)+\lambda g(t)
=
g(z)+\lambda\langle p,t-z\rangle.
\]

Thus equality holds along the entire segment \([z,t]\), contradicting strict convexity.

The set

\[
\Gamma_C\times J
\]

is compact by Lemma 3. The function \(\Delta\) is continuous there and is everywhere positive because \(C\cap J=\varnothing\). Hence it has a strictly positive minimum. ∎

---

## Lemma 5 — Douglas factorization in the required orientation

Let \(S,T\) be bounded operators and suppose

\[
SS^*\le TT^*.
\]

Then there exists a contraction \(C\) such that

\[
S=TC.
\]

### Proof

For vectors of the form \(T^*\xi\), define

\[
C^*(T^*\xi)=S^*\xi.
\]

This is well-defined: if \(T^*\xi=0\), then

\[
\|S^*\xi\|^2
=
\langle SS^*\xi,\xi\rangle
\le
\langle TT^*\xi,\xi\rangle
=0.
\]

Moreover,

\[
\|C^*(T^*\xi)\|
=
\|S^*\xi\|
\le
\|T^*\xi\|.
\]

Thus \(C^*\) extends as a contraction from \(\overline{\operatorname{ran}T^*}\), and we define it to be zero on the orthogonal complement. Then

\[
S^*=C^*T^*,
\]

hence \(S=TC\). ∎

---

## Lemma 6 — critical Bregman-energy divergence in dimensions one and two

Let \(K\subseteq\mathbb R^d\), where \(d\le2\), and let \(g:K\to\mathbb R\) be continuous and strictly convex. Let \(C\subseteq\operatorname{int}K\) be compact. Choose a bounded Borel selector

\[
p(z)\in\partial_Kg(z).
\]

Define

\[
D_z(t)
=
g(t)-g(z)-\langle p(z),t-z\rangle.
\]

If \(\mu\) is any nonzero finite Borel measure on \(C\), then

\[
\boxed{
\iint_{C\times C}
\frac{d\mu(t)\,d\mu(z)}{D_z(t)}
=
+\infty,
}
\]

where \(1/0=+\infty\).

### Proof

The map

\[
(z,t)\longmapsto D_z(t)
\]

is jointly Borel because \(g\) is continuous and \(p\) is Borel.

For \(z,t\in C\),

\[
D_z(t)+D_t(z)
=
\langle p(t)-p(z),t-z\rangle.
\]

Since both Bregman defects are nonnegative,

\[
D_z(t)
\le
\langle p(t)-p(z),t-z\rangle.
\]

Hence

\[
D_z(t)
\le
\|p(t)-p(z)\|\,\|t-z\|
\le
\frac12
\left(
\|p(t)-p(z)\|^2+\|t-z\|^2
\right).
\]

Put

\[
G(z)=(z,p(z))\in\mathbb R^{2d}.
\]

Then

\[
D_z(t)
\le
\frac12\|G(t)-G(z)\|^2,
\]

and consequently

\[
\frac1{D_z(t)}
\ge
\frac{2}{\|G(t)-G(z)\|^2}. \tag{6.1}
\]

It remains to prove that the \(2\)-Riesz energy on the right diverges.

### Minty parametrization

Define

\[
U(z)=z+p(z),
\qquad
W(z)=z-p(z).
\]

Subgradient monotonicity gives

\[
\langle p(z)-p(t),z-t\rangle\ge0.
\]

Therefore

\[
\begin{aligned}
\|U(z)-U(t)\|^2-\|W(z)-W(t)\|^2
&=
4\langle p(z)-p(t),z-t\rangle\\
&\ge0.
\end{aligned}
\]

Thus

\[
\|W(z)-W(t)\|
\le
\|U(z)-U(t)\|. \tag{6.2}
\]

In particular, \(U\) is injective: if \(U(z)=U(t)\), then (6.2) gives \(W(z)=W(t)\), and

\[
z=\frac{U(z)+W(z)}2
=
\frac{U(t)+W(t)}2=t.
\]

Hence \(W\) is a \(1\)-Lipschitz function of \(U\) on the set \(U(C)\).

Also,

\[
\begin{aligned}
\|G(z)-G(t)\|^2
&=
\|z-t\|^2+\|p(z)-p(t)\|^2\\
&=
\frac12
\left(
\|U(z)-U(t)\|^2+\|W(z)-W(t)\|^2
\right)\\
&\le
\|U(z)-U(t)\|^2. \tag{6.3}
\end{aligned}
\]

Since \(C\) and \(p(C)\) are bounded, \(U(C)\) is contained in a bounded cube in \(\mathbb R^d\).

### Measurable covering and partition

Fix \(0<r<1\). Partition a fixed cube containing \(U(C)\) into finitely many half-open Borel cubes of diameter at most \(r\). The number \(N(r)\) of such cubes satisfies

\[
N(r)\le M r^{-d}
\]

for a constant \(M\) independent of \(r\).

Let the cubes be \(Q_1,\dots,Q_{N(r)}\), and define

\[
C_j=U^{-1}(Q_j).
\]

Because \(U\) is Borel, the \(C_j\) form a finite Borel partition of \(C\). If \(z,t\in C_j\), then by (6.3),

\[
\|G(z)-G(t)\|\le r.
\]

Write

\[
m=\mu(C)>0.
\]

Then

\[
\begin{aligned}
(\mu\times\mu)
\left\{
(z,t):\|G(z)-G(t)\|\le r
\right\}
&\ge
\sum_{j=1}^{N(r)}\mu(C_j)^2\\
&\ge
\frac{\left(\sum_j\mu(C_j)\right)^2}{N(r)}\\
&\ge
\frac{m^2}{M}r^d. \tag{6.4}
\end{aligned}
\]

The second inequality is Cauchy–Schwarz.

### Layer-cake divergence

For \(a\ge0\),

\[
a^{-2}
=
2\int_a^\infty r^{-3}\,dr,
\]

with both sides interpreted as \(+\infty\) when \(a=0\). Tonelli therefore gives

\[
\begin{aligned}
\iint
\frac{d\mu(z)d\mu(t)}
{\|G(z)-G(t)\|^2}
&=
2\int_0^\infty
r^{-3}
(\mu\times\mu)
\{\|G(z)-G(t)\|\le r\}
\,dr\\
&\ge
\frac{2m^2}{M}
\int_0^{r_0} r^{d-3}\,dr.
\end{aligned}
\]

The last integral diverges for \(d=1\) and \(d=2\). Combining this with (6.1) proves the claim. ∎

---

## Lemma 7 — localization on one common compact convex domain

Let \(K\subseteq\mathbb R^d\) be compact and convex, where \(d\le2\), and identify its affine hull with \(\mathbb R^d\). Let \(g:K\to\mathbb R\) be continuous and strictly convex.

Let \(E\) be a normalized POVM on \(K\), and let \(F\) be a projection-valued measure on \(K\), both acting on a Hilbert space \(H\). Assume

\[
\int_K \ell\,dE
=
\int_K \ell\,dF
\]

for every affine function \(\ell\) on \(K\), and

\[
\int_K g\,dE
=
\int_K g\,dF.
\]

Let

\[
C\subseteq\operatorname{ri}K
\]

and \(J\subseteq K\) be compact and disjoint. Then

\[
\boxed{F(C)E(J)F(C)=0.}
\]

The subgradients in this lemma are always taken on the single common domain \(K\).

### Proof

After identifying \(\operatorname{aff}K\) with \(\mathbb R^d\), choose the bounded Borel selector

\[
p(z)\in\partial_Kg(z),
\qquad z\in C,
\]

provided by Lemma 3.

Define

\[
D_z(t)
=
g(t)-g(z)-\langle p(z),t-z\rangle.
\]

By Lemma 4, there is \(c>0\) such that

\[
D_z(t)\ge c
\]

for all \(z\in C\), \(t\in J\). Since \(D_z\ge0\) on all of \(K\),

\[
D_z\ge c\,1_J.
\]

Therefore

\[
cE(J)
\le
\int_K D_z\,dE.
\]

Because \(D_z\) is a linear combination of \(g\) and affine functions,

\[
\int_K D_z\,dE
=
\int_K D_z\,dF.
\]

Set

\[
R=F(C)
\]

and

\[
T=RE(J)R.
\]

On the Hilbert space \(RH\), define

\[
M_z
=
R\left(\int_K D_z\,dF\right)R.
\]

The preceding inequality gives

\[
cT\le M_z. \tag{7.1}
\]

Assume for contradiction that \(T\ne0\). Choose \(u\in RH\) such that

\[
\eta=T^{1/2}u\ne0.
\]

Apply Lemma 5 to

\[
S=\sqrt c\,T^{1/2},
\qquad
Q=M_z^{1/2}.
\]

Since

\[
SS^*=cT\le M_z=QQ^*,
\]

there is a contraction \(C_z\) on \(RH\) such that

\[
\boxed{
\sqrt c\,T^{1/2}=M_z^{1/2}C_z.
} \tag{7.2}
\]

This is the needed Douglas-factorization orientation.

Let

\[
v_z=C_zu.
\]

Then

\[
\sqrt c\,\eta=M_z^{1/2}v_z,
\qquad
\|v_z\|\le\|u\|. \tag{7.3}
\]

Define the finite scalar measure

\[
\mu(S)=\|F(S)\eta\|^2.
\]

Because \(\eta\in RH=F(C)H\), \(\mu\) is supported on \(C\), and

\[
\mu(C)=\|\eta\|^2>0.
\]

For \(n\ge1\), define the bounded Borel function

\[
h_n(s)
=
\begin{cases}
\min\{n,s^{-1}\},&s>0,\\[2mm]
n,&s=0.
\end{cases}
\]

Then

\[
0\le s h_n(s)\le1
\]

and \(h_n(s)\uparrow s^{-1}\), with \(0^{-1}=+\infty\).

Using the spectral calculus of \(M_z\) on \(RH\) and (7.3),

\[
\begin{aligned}
\int_C h_n(D_z(t))\,d\mu(t)
&=
\langle h_n(M_z)\eta,\eta\rangle\\
&=
\frac1c
\langle
M_z^{1/2}h_n(M_z)M_z^{1/2}v_z,v_z
\rangle\\
&=
\frac1c
\langle
M_zh_n(M_z)v_z,v_z
\rangle\\
&\le
\frac1c\|v_z\|^2\\
&\le
\frac1c\|u\|^2.
\end{aligned}
\]

By monotone convergence,

\[
\int_C\frac{d\mu(t)}{D_z(t)}
\le
\frac1c\|u\|^2 \tag{7.4}
\]

for every \(z\in C\).

The function

\[
(z,t)\longmapsto \frac1{D_z(t)}
\]

is jointly Borel and nonnegative. Integrating (7.4) with respect to \(d\mu(z)\) and applying Tonelli,

\[
\iint_{C\times C}
\frac{d\mu(t)d\mu(z)}{D_z(t)}
\le
\frac1c\|u\|^2\mu(C)
<\infty.
\]

No measurable selection of the Douglas factors \(C_z\) is needed: for each fixed \(z\), one factor exists, and the resulting scalar estimate (7.4) has a common measurable left-hand side and a \(z\)-independent upper bound.

The finite-energy conclusion contradicts Lemma 6. Hence \(T=0\). ∎

---

## Lemma 8 — affine exposure of a face

Let \(E\) and \(F\) be a normalized POVM and PVM on a compact space \(K\). Let \(r:K\to[0,\infty)\) be continuous, suppose

\[
\int r\,dE=\int r\,dF,
\]

and let

\[
L=\{t\in K:r(t)=0\}.
\]

Then

\[
\boxed{F(L)E(K\setminus L)F(L)=0.}
\]

### Proof

Set

\[
U_n=\{t:r(t)\ge1/n\}.
\]

Since

\[
1_{U_n}\le nr,
\]

we have

\[
E(U_n)\le n\int r\,dE
=
n\int r\,dF.
\]

Compressing by \(F(L)\),

\[
F(L)E(U_n)F(L)
\le
nF(L)\left(\int r\,dF\right)F(L)
=0.
\]

Because \(U_n\uparrow K\setminus L\), strong monotone convergence gives the result. ∎

---

## Lemma 9 — compact-to-Borel extension and polarization

Let \(Z\) be a locally compact, \(\sigma\)-compact metric space. Let \(E_1,E_2\) be finite POVMs on \(Z\). Suppose

\[
E_1(C)=E_2(C)
\]

for every compact \(C\subseteq Z\). Then

\[
E_1(S)=E_2(S)
\]

for every Borel \(S\subseteq Z\).

### Proof

Fix \(\xi\). Define finite positive scalar measures

\[
\mu_\xi(S)=\langle E_1(S)\xi,\xi\rangle,
\qquad
\nu_\xi(S)=\langle E_2(S)\xi,\xi\rangle.
\]

Let \(U\subseteq Z\) be open. Choose a compact exhaustion \(L_n\) of \(Z\), with \(L_n\subseteq L_{n+1}\), and define

\[
K_n=
\left\{
z\in L_n:
\operatorname{dist}(z,Z\setminus U)\ge1/n
\right\}.
\]

Then \(K_n\) may be replaced by the increasing sequence \(\bigcup_{j\le n}K_j\); each term is compact and the union is \(U\). Hence

\[
\mu_\xi(U)
=
\sup_{C\subseteq U,\ C\text{ compact}}\mu_\xi(C)
=
\sup_{C\subseteq U,\ C\text{ compact}}\nu_\xi(C)
=
\nu_\xi(U).
\]

Thus the measures agree on all open sets. Open sets form a \(\pi\)-system generating the Borel \(\sigma\)-algebra, and the class of Borel sets on which two finite measures agree is a Dynkin system. Hence

\[
\mu_\xi(S)=\nu_\xi(S)
\]

for every Borel \(S\).

This holds for every \(\xi\). Equality of the associated quadratic forms implies equality of all matrix elements by polarization. For example, with the inner product linear in the first variable,

\[
\begin{aligned}
4\langle T\xi,\eta\rangle
={}&
q_T(\xi+\eta)-q_T(\xi-\eta)\\
&+
i\,q_T(\xi+i\eta)
-i\,q_T(\xi-i\eta),
\end{aligned}
\]

where \(q_T(v)=\langle Tv,v\rangle\). Therefore \(E_1(S)=E_2(S)\). ∎

---

## Lemma 10 — complete reconstruction on an interval

Let \(I=[a,b]\), let \(E\) be a normalized POVM on \(I\), and let \(F\) be a PVM on \(I\), acting on a Hilbert space \(H\). Let \(g:I\to\mathbb R\) be continuous and strictly convex. Assume

\[
\int_I 1\,dE=\int_I1\,dF=I_H,
\]

\[
\int_I t\,dE=\int_I t\,dF,
\]

and

\[
\int_I g(t)\,dE(t)
=
\int_I g(t)\,dF(t).
\]

Then

\[
\boxed{E=F.}
\]

### Proof

Let

\[
I^\circ=(a,b),
\qquad
D=\{a,b\},
\]

and write

\[
F_0=F(I^\circ),
\qquad
F_a=F(\{a\}),
\qquad
F_b=F(\{b\}).
\]

### Step 1: expose the endpoints

The affine function

\[
r_a(t)=t-a
\]

is nonnegative and vanishes exactly at \(a\). Lemma 8 gives

\[
F_aE(I\setminus\{a\})F_a=0. \tag{10.1}
\]

Similarly, using \(r_b(t)=b-t\),

\[
F_bE(I\setminus\{b\})F_b=0. \tag{10.2}
\]

### Step 2: identify the interior and endpoint supports

Choose compact intervals \(C_n\subseteq I^\circ\) increasing to \(I^\circ\). Lemma 7, applied on the common domain \(I\), with \(C=C_n\) and \(J=D\), gives

\[
F(C_n)E(D)F(C_n)=0.
\]

Passing to the strong limit,

\[
F_0E(D)F_0=0.
\]

By positivity,

\[
E(D)F_0=0,
\]

so

\[
E(D)\le F_a+F_b. \tag{10.3}
\]

Equations (10.1) and (10.2) imply

\[
F_aE(I^\circ)F_a=0,
\qquad
F_bE(I^\circ)F_b=0.
\]

Since \(E(I^\circ)\ge0\), Lemma 1 and the join \(F_a\vee F_b=F(D)\) give

\[
E(I^\circ)(F_a+F_b)=0,
\]

hence

\[
E(I^\circ)\le F_0. \tag{10.4}
\]

Because

\[
E(I^\circ)+E(D)=I
\]

and

\[
F_0+F_a+F_b=I,
\]

the two inequalities (10.3) and (10.4) force

\[
E(I^\circ)=F_0,
\qquad
E(D)=F_a+F_b. \tag{10.5}
\]

### Step 3: reconstruct compact subsets of the interior

Let \(C\subseteq I^\circ\) be compact and put

\[
R=F(C),
\qquad
R'=F(I^\circ\setminus C)=F_0-R.
\]

Choose compact \(J_n\subseteq I^\circ\setminus C\) increasing to \(I^\circ\setminus C\).

Lemma 7 with first set \(C\) and second set \(J_n\) gives

\[
RE(J_n)R=0.
\]

Passing to the limit,

\[
RE(I^\circ\setminus C)R=0.
\]

Using (10.5),

\[
RE(C)R
=
RE(I^\circ)R
=
R. \tag{10.6}
\]

Applying Lemma 7 with first set \(J_n\) and second set \(C\) gives

\[
F(J_n)E(C)F(J_n)=0.
\]

Passing to the limit,

\[
R'E(C)R'=0. \tag{10.7}
\]

Crucially,

\[
0\le E(C)\le E(I^\circ)=F_0. \tag{10.8}
\]

By (10.6), Lemma 1 applied to \(I-E(C)\) gives

\[
E(C)R=R.
\]

By (10.7), positivity gives

\[
E(C)R'=0.
\]

Together with (10.8), this proves

\[
E(C)=R=F(C).
\]

Lemma 9 extends this equality from compact to all Borel subsets of \(I^\circ\).

### Step 4: reconstruct the endpoints

Let

\[
T_a=E(\{a\}).
\]

From (10.1),

\[
F_aT_aF_a=F_a.
\]

Since \(\{a\}\subseteq I\setminus\{b\}\), equation (10.2) gives

\[
F_bT_aF_b=0.
\]

Also,

\[
0\le T_a\le E(D)=F_a+F_b.
\]

By Lemma 1,

\[
T_aF_a=F_a,
\qquad
T_aF_b=0.
\]

Hence

\[
T_a=F_a.
\]

Similarly,

\[
E(\{b\})=F_b.
\]

Combining the interior and endpoint equalities yields \(E=F\). ∎

---

# C. Corrected proof of the square theorem

Let

\[
Q=[0,1]^2.
\]

Let \(V:H\to\mathcal K\) be the inclusion isometry. Then

\[
VV^*=P,
\qquad
V^*V=I_H.
\]

Let \(\mathsf E\) be the joint spectral PVM of the commuting pair \((X,Y)\) on \(Q\). Define the compressed POVM

\[
E(S)=V^*\mathsf E(S)V.
\]

Thus for every \(h\in C(Q)\),

\[
\Phi(h):=\int_Qh\,dE
=
V^*h(X,Y)V.
\]

Let \(F\) be the joint spectral PVM of the commuting positive contractions \((A,B)\). Define

\[
\rho(h):=\int_Qh\,dF=h(A,B).
\]

Because

\[
A=V^*XV,
\qquad
B=V^*YV,
\]

we have

\[
\Phi(\ell)=\rho(\ell)
\]

for every affine function \(\ell\) on \(Q\). The assumed equality gives

\[
\Phi(f)=\rho(f). \tag{C.1}
\]

We prove \(E=F\).

---

## C.1 Affine exposure and reconstruction on every edge

Let \(L\) be one of the four edges of \(Q\). There is a nonnegative affine function \(r_L\) whose zero set is exactly \(L\):

\[
x,\quad 1-x,\quad y,\quad 1-y.
\]

Since affine functions are fixed by \(\Phi\) and \(\rho\), Lemma 8 gives

\[
F(L)E(Q\setminus L)F(L)=0. \tag{C.2}
\]

Regard \(F(L)H\) as a Hilbert space with identity \(F(L)\), and define

\[
E_L(S)=F(L)E(S)F(L).
\]

Equation (C.2) implies that \(E_L\) is supported on \(L\), and

\[
E_L(L)=F(L).
\]

Choose an affine coordinate \(s_L:L\to[0,1]\). It extends to an affine function on \(Q\). The POVM \(E_L\) and the restricted PVM \(F|_L\) agree on:

- the constant function;
- the coordinate \(s_L\);
- the function \(f|_L\).

The restriction \(f|_L\) is strictly convex.

Therefore Lemma 10 applies on the interval \(L\). Hence, for every Borel \(S\subseteq Q\),

\[
\boxed{
F(L)E(S)F(L)=F(S\cap L).
} \tag{C.3}
\]

The interval theorem is used only after affine exposure has shown that the compressed POVM is supported on that edge. No subgradient on an edge is ever compared with a point outside the edge.

---

## C.2 Separate the interior from the boundary

Let

\[
Q^\circ=(0,1)^2,
\qquad
\partial Q=Q\setminus Q^\circ,
\]

and write

\[
F_{\mathrm{int}}=F(Q^\circ),
\qquad
F_{\partial}=F(\partial Q).
\]

Choose compact squares

\[
C_n=[1/n,1-1/n]^2
\]

for sufficiently large \(n\), increasing to \(Q^\circ\).

Apply Lemma 7 on the common domain \(Q\) with

\[
C=C_n,
\qquad
J=\partial Q.
\]

We obtain

\[
F(C_n)E(\partial Q)F(C_n)=0.
\]

Passing to the strong limit gives

\[
F_{\mathrm{int}}E(\partial Q)F_{\mathrm{int}}=0.
\]

By positivity,

\[
E(\partial Q)F_{\mathrm{int}}=0,
\]

so

\[
E(\partial Q)\le F_{\partial}. \tag{C.4}
\]

For every edge \(L\), (C.2) implies

\[
F(L)E(Q^\circ)F(L)=0.
\]

Since \(E(Q^\circ)\ge0\), it annihilates \(F(L)\). The ranges of the four edge projections have closed span

\[
\bigvee_LF(L)
=
F\left(\bigcup_LL\right)
=
F_{\partial}.
\]

Lemma 1 therefore gives

\[
E(Q^\circ)F_{\partial}=0,
\]

hence

\[
E(Q^\circ)\le F_{\mathrm{int}}. \tag{C.5}
\]

Now

\[
E(Q^\circ)+E(\partial Q)=I
\]

and

\[
F_{\mathrm{int}}+F_{\partial}=I.
\]

The inequalities (C.4) and (C.5) force

\[
\boxed{
E(Q^\circ)=F_{\mathrm{int}},
\qquad
E(\partial Q)=F_{\partial}.
} \tag{C.6}
\]

---

## C.3 Reconstruct compact subsets of the interior

Let \(C\subseteq Q^\circ\) be compact. Put

\[
R=F(C),
\qquad
R'=F(Q^\circ\setminus C)=F_{\mathrm{int}}-R.
\]

Choose increasing compact sets

\[
J_n\subseteq Q^\circ\setminus C,
\qquad
\bigcup_nJ_n=Q^\circ\setminus C.
\]

For example, one may take

\[
J_n
=
\left\{
z\in Q:
\operatorname{dist}(z,\partial Q)\ge1/n,\ 
\operatorname{dist}(z,C)\ge1/n
\right\}.
\]

Apply Lemma 7 with first set \(C\) and second set \(J_n\):

\[
RE(J_n)R=0.
\]

Passing to the limit,

\[
RE(Q^\circ\setminus C)R=0.
\]

Using (C.6),

\[
RE(C)R
=
RE(Q^\circ)R
=
R. \tag{C.7}
\]

Apply Lemma 7 with first set \(J_n\) and second set \(C\):

\[
F(J_n)E(C)F(J_n)=0.
\]

Passing to the limit,

\[
R'E(C)R'=0. \tag{C.8}
\]

The required operator-order point is

\[
\boxed{
0\le E(C)\le E(Q^\circ)=F_{\mathrm{int}}.
} \tag{C.9}
\]

Thus \(E(C)\) has no component outside \(F_{\mathrm{int}}H\).

From (C.7) and Lemma 1 applied to \(I-E(C)\),

\[
E(C)R=R.
\]

From (C.8) and positivity,

\[
E(C)R'=0.
\]

Because \(F_{\mathrm{int}}=R+R'\) and (C.9) holds,

\[
E(C)=R=F(C). \tag{C.10}
\]

By Lemma 9 and polarization,

\[
\boxed{
E(S)=F(S)
\quad
\text{for every Borel }S\subseteq Q^\circ.
} \tag{C.11}
\]

---

## C.4 Reconstruct the boundary, including overlapping edges

Let \(S\subseteq\partial Q\) be Borel and set

\[
T=E(S).
\]

By (C.6),

\[
0\le T\le E(\partial Q)=F_{\partial}. \tag{C.12}
\]

For every edge \(L\), equation (C.3) gives

\[
F(L)TF(L)=F(S\cap L). \tag{C.13}
\]

Set

\[
R_L=F(S\cap L),
\qquad
N_L=F(L\setminus S).
\]

Since \(R_L\le F(L)\), (C.13) gives

\[
R_LTR_L=R_L.
\]

Because \(0\le T\le I\), Lemma 1 gives

\[
TR_L=R_L. \tag{C.14}
\]

Likewise,

\[
N_LTN_L=0,
\]

so positivity gives

\[
TN_L=0. \tag{C.15}
\]

The edges may overlap at vertices, but PVM joins are determined by unions:

\[
\bigvee_LR_L
=
F\left(\bigcup_L(S\cap L)\right)
=
F(S), \tag{C.16}
\]

and

\[
\bigvee_LN_L
=
F\left(\bigcup_L(L\setminus S)\right)
=
F(\partial Q\setminus S). \tag{C.17}
\]

Equation (C.14) and Lemma 1 imply

\[
TF(S)=F(S).
\]

Equation (C.15) gives

\[
TF(\partial Q\setminus S)=0.
\]

Since \(T\) is supported on \(F_{\partial}H\) by (C.12), and

\[
F_{\partial}
=
F(S)+F(\partial Q\setminus S),
\]

we conclude

\[
\boxed{E(S)=F(S)}
\]

for every Borel \(S\subseteq\partial Q\).

Together with (C.11),

\[
\boxed{E=F\text{ on all Borel subsets of }Q.} \tag{C.18}
\]

Indeed, for arbitrary Borel \(S\subseteq Q\),

\[
S=(S\cap Q^\circ)\,\dot\cup\,(S\cap\partial Q),
\]

and both POVMs are additive over this disjoint decomposition.

---

## C.5 Equality of the spectral measures forces reduction

From \(E=F\), for every \(h\in C(Q)\),

\[
V^*h(X,Y)V=h(A,B).
\]

Take \(h(x,y)=x^2\). Then

\[
V^*X^2V=A^2.
\]

But

\[
\begin{aligned}
V^*X^2V-A^2
&=
V^*X^2V-V^*XVV^*XV\\
&=
V^*X(I-VV^*)XV\\
&=
V^*X(I-P)XV\\
&=
\bigl((I-P)XV\bigr)^*
\bigl((I-P)XV\bigr).
\end{aligned}
\]

Hence

\[
(I-P)XV=0.
\]

Since \(VH=PH\), this is equivalent to

\[
(I-P)XP=0.
\]

Taking adjoints, because \(X=X^*\),

\[
PX(I-P)=0.
\]

Therefore

\[
XP=PXP=PX,
\]

so

\[
PX=XP.
\]

Applying the same argument to \(h(x,y)=y^2\) gives

\[
PY=YP.
\]

This proves the theorem. ∎

---

# Compact convex polytope extension in affine dimension at most two

## Corollary — POVM reconstruction on a one- or two-dimensional polytope

Let \(K\) be a compact convex polytope of affine dimension \(d\le2\). Let \(E\) be a normalized POVM on \(K\), and let \(F\) be a PVM on \(K\). Let \(g:K\to\mathbb R\) be continuous and strictly convex. Suppose

\[
\int_K \ell\,dE
=
\int_K \ell\,dF
\]

for every affine function \(\ell\) on \(K\), and

\[
\int_K g\,dE
=
\int_K g\,dF.
\]

Then

\[
\boxed{E=F.}
\]

### Proof

If \(\dim K=0\), the conclusion is immediate.

If \(\dim K=1\), identify \(K\) affinely with an interval and apply Lemma 10.

Assume \(\dim K=2\). Let

\[
K^\circ=\operatorname{ri}K,
\qquad
\partial K=K\setminus K^\circ.
\]

The boundary is a finite union of edges

\[
\partial K=L_1\cup\cdots\cup L_N.
\]

Each edge \(L_j\) is exposed: there is a nonnegative affine function \(r_j\) on \(K\) whose zero set is precisely \(L_j\). Lemma 8 therefore gives

\[
F(L_j)E(K\setminus L_j)F(L_j)=0.
\]

Thus the compressed POVM on \(F(L_j)H\) is supported on \(L_j\). It agrees with \(F|_{L_j}\) on the constant function, an affine coordinate along \(L_j\), and \(g|_{L_j}\). Since \(g|_{L_j}\) is strictly convex, Lemma 10 gives

\[
F(L_j)E(S)F(L_j)=F(S\cap L_j) \tag{P.1}
\]

for every Borel \(S\subseteq K\).

Next, exhaust \(K^\circ\) by compact subsets \(C_n\). Lemma 7 on the common domain \(K\), with \(J=\partial K\), gives

\[
F(K^\circ)E(\partial K)F(K^\circ)=0.
\]

Conversely, each exposed-edge identity gives

\[
F(L_j)E(K^\circ)F(L_j)=0.
\]

Since

\[
\bigvee_{j=1}^NF(L_j)=F(\partial K),
\]

positivity yields

\[
E(K^\circ)=F(K^\circ),
\qquad
E(\partial K)=F(\partial K). \tag{P.2}
\]

For a compact \(C\subseteq K^\circ\), use compact exhaustions of \(K^\circ\setminus C\) in both orientations of Lemma 7 exactly as in Section C.3. The essential order relation is

\[
E(C)\le E(K^\circ)=F(K^\circ).
\]

The same positivity argument gives

\[
E(C)=F(C).
\]

Lemma 9 extends this equality to every Borel subset of \(K^\circ\).

Finally, let \(S\subseteq\partial K\) be Borel and set \(T=E(S)\). From (P.2),

\[
0\le T\le F(\partial K).
\]

Equation (P.1) gives, for every edge,

\[
F(L_j)TF(L_j)=F(S\cap L_j).
\]

As in Section C.4, positivity implies that \(T\) is the identity on each \(F(S\cap L_j)\) and zero on each \(F(L_j\setminus S)\). The finite joins satisfy

\[
\bigvee_jF(S\cap L_j)=F(S)
\]

and

\[
\bigvee_jF(L_j\setminus S)=F(\partial K\setminus S),
\]

regardless of overlaps at polygon vertices. Hence \(T=F(S)\).

Thus \(E=F\) on the interior and on the boundary, and therefore on all of \(K\). ∎

---

## Operator-theoretic polytope corollary

Let \(K\subseteq\mathbb R^m\) be a compact convex polytope of affine dimension at most two. Let

\[
T_1,\dots,T_m
\]

be commuting self-adjoint operators whose joint spectrum is contained in \(K\). Let \(P\) be an orthogonal projection and suppose the compressions

\[
A_j=PT_jP|_{\operatorname{ran}P}
\]

commute. Let \(g:K\to\mathbb R\) be continuous and strictly convex, and suppose

\[
Pg(T_1,\dots,T_m)P|_{\operatorname{ran}P}
=
g(A_1,\dots,A_m).
\]

Then \(P\) reduces every \(T_j\).

### Proof

The joint spectrum of \((A_1,\dots,A_m)\) lies in \(K\). To see this, write \(K\), inside its affine hull, as the intersection of finitely many affine equalities and facet inequalities. If an affine function \(\ell\) vanishes on \(K\), then

\[
\ell(T_1,\dots,T_m)=0,
\]

so \(\ell(A_1,\dots,A_m)=0\). If \(\ell\ge0\) on \(K\), then

\[
\ell(T_1,\dots,T_m)\ge0,
\]

and hence

\[
\ell(A_1,\dots,A_m)
=
P\ell(T_1,\dots,T_m)P|_{\operatorname{ran}P}
\ge0.
\]

Thus the compressed joint spectrum satisfies all defining affine relations and inequalities of \(K\).

The associated compressed POVM and spectral PVM agree on every affine function and on \(g\). The preceding polytope reconstruction theorem gives equality of the measures.

Consequently, for every coordinate \(j\),

\[
P T_j^2P|_{\operatorname{ran}P}=A_j^2.
\]

As before,

\[
PT_j^2P|_{\operatorname{ran}P}-A_j^2
=
\bigl((I-P)T_jP\bigr)^*
\bigl((I-P)T_jP\bigr).
\]

Thus

\[
(I-P)T_jP=0.
\]

Self-adjointness gives the opposite off-diagonal block, so \(P\) reduces \(T_j\). ∎

No assertion is made here in affine dimension greater than two.

---

# D. Change log

| Referee issue | Repair |
|---|---|
| Overbroad relative-subgradient lemma | Lemma 7 is stated only for two disjoint compact sets inside one common compact convex domain \(K\). |
| Face subgradients compared with exterior points | Removed. Edge subgradients are used only after affine exposure proves the compressed POVM is supported on that edge. |
| Subgradient existence omitted | Proved from a nonvertical supporting hyperplane to the epigraph at an interior point. |
| Uniform boundedness omitted | Proved using a fixed interior ball around the compact set and directional subgradient inequalities. |
| Borel selector omitted | Constructed explicitly by countable dense approximation to the compact subdifferential fibers. |
| Uniform Bregman gap asserted without proof | Obtained as the positive minimum of the Bregman defect on the compact bounded subdifferential graph times the disjoint compact target. |
| Douglas factorization orientation ambiguous | Written explicitly as \(\sqrt c\,T^{1/2}=M_z^{1/2}C_z\), with \(C_z\) contractive. |
| Informal inverse of \(M_z\) | Replaced by bounded truncations \(h_n(s)=\min(n,s^{-1})\), followed by monotone convergence. |
| Measurability in \((z,t)\) omitted | Proved from the Borel selector; the reciprocal kernel is an extended nonnegative Borel function. |
| Measurable Douglas selection tacitly assumed | Explicitly avoided. Douglas factors are chosen pointwise only; the scalar bound is uniform and Tonelli is applied to the measurable kernel, not to the factors. |
| Minty step compressed | Full \(U=z+p\), \(W=z-p\) parametrization, injectivity, \(1\)-Lipschitz graph estimate, finite cube partition, and critical energy divergence are included. |
| Cover sets not shown measurable | Half-open Borel cubes are pulled back under the Borel map \(U\), giving a finite Borel partition. |
| Interior reconstruction missed an order bound | The proof explicitly uses \(E(C)\le E(Q^\circ)=F_{\mathrm{int}}\). |
| Compact-to-Borel extension omitted | Supplied via compact exhaustion of open sets, a Dynkin-system argument, and polarization. |
| One-dimensional edge argument incomplete | A complete interval reconstruction theorem, including endpoint exposure and endpoint recovery, is proved as Lemma 10. |
| Boundary edges overlap at vertices | The proof uses PVM joins \(\bigvee_LF(S\cap L)=F(S)\), so overlaps cause no double-counting problem. |
| Final reduction abbreviated | Equality \(E=F\) is followed by the exact \(x^2\) and \(y^2\) leakage identities. |
| Polytope claim too broad | Restricted to compact convex polytopes of affine dimension \(0,1,\) or \(2\), with a separate finite-edge reconstruction proof. |

---

# E. Remaining assumptions and uncertainties

1. **No assumptions beyond the theorem statement are used.** In particular:
   - \(f\) need not be differentiable;
   - \(P\) need not have finite rank;
   - the Hilbert space need not be separable;
   - no spectral discreteness is assumed.

2. The proof uses the standard joint spectral theorem for commuting bounded self-adjoint operators, the finite-dimensional supporting-hyperplane theorem, scalar monotone convergence, and Tonelli’s theorem.

3. The only dimensional step is the divergence

   \[
   \int_0 r^{d-3}\,dr=+\infty,
   \]

   which holds for \(d\le2\). The argument does not prove an analogue in affine dimension \(d\ge3\).

4. The polytope corollary uses finiteness of the edge set to reconstruct the whole boundary from the one-dimensional edge restrictions.

5. No claim is made here about novelty, priority, completeness of any literature search, or treatment in unpublished work.

6. **Internal mathematical confidence:** high. The proof’s critical points are all explicit: common-domain localization, compact subdifferential selection, truncation-based Douglas estimates, joint measurability, critical energy divergence, interior order control, interval reconstruction, and finite boundary gluing.