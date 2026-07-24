# 1. Complete proof of the arbitrary compact-convex planar theorem

The preceding polygon proof and all of its lemmas remain **frozen and unchanged**. The argument below uses those results as established inputs and supplies only the new machinery required for a nonpolygonal boundary.

The decisive additional construction is a measurable **extreme-boundary replacement kernel**. Scherer’s planar boundary-rigidity theorem determines the replacement even when the spectral measure on the extreme boundary is diffuse; strict convexity then proves that the replacement moved no mass at all.

---

## Theorem

Let \(K\) be a compact convex subset of a finite-dimensional real affine space, with

\[
\dim \operatorname{aff}K\le 2.
\]

Let \(E\) be a normalized positive operator-valued measure on \(K\), and let \(F\) be a projection-valued measure on \(K\), acting on the same Hilbert space \(H\).

Let

\[
g:K\to\mathbb R
\]

be continuous and strictly convex. Suppose

\[
\int_K \ell\,dE=\int_K\ell\,dF
\]

for every real affine function \(\ell\) on \(K\), and

\[
\int_K g\,dE=\int_Kg\,dF.
\]

Then

\[
\boxed{E=F.}
\]

Consequently, the phrase “compact convex polytope of affine dimension at most two” in the frozen corollary may be replaced by

\[
\boxed{\text{arbitrary compact convex set of affine dimension at most two}.}
\]

No assertion is made in affine dimension \(3\) or higher.

---

# I. Previously proved inputs, used unchanged

The following are exactly the results established in the frozen proof.

### P1. Common-domain Bregman localization

If \(C\subseteq\operatorname{ri}K\) and \(J\subseteq K\) are disjoint compact sets, then

\[
F(C)E(J)F(C)=0. \tag{1}
\]

All subgradients are taken on the one common compact convex domain \(K\).

### P2. Affine exposure

If \(r\ge0\) is affine on \(K\), and

\[
L=\{x\in K:r(x)=0\},
\]

then

\[
F(L)E(K\setminus L)F(L)=0. \tag{2}
\]

### P3. Interval reconstruction

If an \(E\)-compression and an \(F\)-compression are both supported on a compact interval and agree on the constant function, the affine coordinate and a continuous strictly convex function, then the two compressed measures agree on every Borel subset of the interval.

### P4. Compact-to-Borel extension

Equality of finite POVMs on every compact subset of a locally compact metric space implies equality on every Borel subset, by scalar regularity and polarization.

### P5. Positivity principles

For \(0\le T\le I\) and a projection \(R\),

\[
RTR=R\implies TR=RT=R,
\]

while

\[
RTR=0\implies TR=RT=0.
\]

---

## P6. Scherer’s planar extreme-boundary rigidity theorem

Let \(K\subseteq\mathbb R^2\) be compact and convex, and let

\[
Z=\operatorname{ex}K.
\]

If \(M\) is a normalized POVM on \(Z\), \(N\) is a PVM on \(Z\), and

\[
\int_Z\ell\,dM=\int_Z\ell\,dN
\]

for every affine function \(\ell\) on \(K\), then

\[
M=N. \tag{3}
\]

Equivalently, the affine function system \(A(K)|_Z\) is hyperrigid in \(C(Z)\). Scherer’s proof first obtains annihilation between disjoint closed boundary arcs and then globalizes the annihilation by a Dynkin-system argument. 

This is the only external theorem used in the strengthening.

---

# II. New planar boundary geometry

From now on assume

\[
\dim\operatorname{aff}K=2,
\]

and identify the affine hull with \(\mathbb R^2\). Write

\[
K^\circ=\operatorname{ri}K.
\]

## Lemma 1 — decomposition of a planar convex boundary

There is an at most countable family of nondegenerate closed line segments

\[
L_1,L_2,\ldots\subseteq\partial K
\]

such that, writing

\[
U_n=\operatorname{ri}L_n
\]

for the relative interior in the supporting line,

\[
K
=
K^\circ
\;\dot\cup\;
\operatorname{ex}K
\;\dot\cup\;
\bigdotcup_{n\ge1}U_n. \tag{4}
\]

Each \(L_n\) is an exposed face of \(K\), and its two endpoints are extreme points of \(K\). Moreover,

\[
\operatorname{ex}K
\]

is compact.

### Proof

Let \(x\in\partial K\) be nonextreme. Then

\[
x=\lambda y+(1-\lambda)z
\]

for distinct \(y,z\in K\) and \(0<\lambda<1\).

Choose a supporting affine functional \(r\) at \(x\), normalized so that

\[
r\ge0\quad\text{on }K,
\qquad
r(x)=0.
\]

Then

\[
0=r(x)=\lambda r(y)+(1-\lambda)r(z).
\]

Since both terms are nonnegative,

\[
r(y)=r(z)=0.
\]

Thus \(x\) lies in the relative interior of the nondegenerate exposed face

\[
L=K\cap\{r=0\}.
\]

Because \(K\subseteq\mathbb R^2\), every nondegenerate proper exposed face is a compact line segment.

Conversely, every point in the relative interior of such a segment is nonextreme. Hence the nonextreme boundary points are exactly the relative interiors of the maximal nondegenerate boundary faces.

Two distinct maximal faces cannot have intersecting relative interiors. If two noncollinear boundary segments passed through the same point as an interior point of both, their convex hull would contain a planar neighborhood of that point, contradicting that it lies on \(\partial K\). If the two segments are collinear, maximality makes them identical.

We next show that \(U=\operatorname{ri}L\) is relatively open in \(\partial K\). Let \(x\in U\). Choose \(a,b\in L\) with

\[
x\in(a,b),
\]

and choose \(y\in K^\circ\). Let \(H\) be the supporting line containing \(L\), and let \(H^+\) be the closed half-plane containing \(K\).

The triangle

\[
\Delta=\operatorname{conv}\{a,b,y\}
\]

lies in \(K\). Since \(x\) is an interior point of the base \([a,b]\), it has positive distance from the other two edges of \(\Delta\). Therefore, for some \(\varepsilon>0\),

\[
B(x,\varepsilon)\cap H^+\subseteq\Delta.
\]

Any point in this half-ball that is not on \(H\) lies in the interior of \(\Delta\), and hence in \(K^\circ\). Consequently,

\[
B(x,\varepsilon)\cap\partial K\subseteq L.
\]

Thus \(U\) is relatively open in \(\partial K\).

The sets \(U_n\) are therefore pairwise disjoint nonempty open subsets of the second-countable space \(\partial K\). Any family of pairwise disjoint nonempty open subsets of a second-countable space is countable. Hence the family of maximal nondegenerate faces is at most countable.

The endpoints of a maximal face are extreme. Otherwise an endpoint would belong to the relative interior of another nondegenerate face. The relative openness just proved would then force the two maximal faces to share a nontrivial subsegment, hence to be identical, contradicting that the point was an endpoint.

Finally,

\[
\operatorname{ex}K
=
\partial K\setminus\bigcup_nU_n.
\]

The union on the right is relatively open in \(\partial K\), so \(\operatorname{ex}K\) is closed in the compact set \(\partial K\), and is therefore compact. ∎

---

# III. A measurable representing kernel on the extreme boundary

We require a Borel choice of an extreme-point representing probability measure for every point of \(K\).

## Lemma 2 — compact-fiber Borel selection

Let \(X,Y\) be compact metric spaces and let

\[
\mathcal R\subseteq X\times Y
\]

be closed, with every fiber

\[
\mathcal R_x=\{y:(x,y)\in\mathcal R\}
\]

nonempty. Then there is a Borel map

\[
s:X\to Y
\]

such that

\[
s(x)\in\mathcal R_x
\]

for every \(x\in X\).

### Proof

Choose a countable dense sequence \((q_j)\) in \(Y\). For every \(j\), put

\[
d_j(x)=\operatorname{dist}(q_j,\mathcal R_x).
\]

Each \(d_j\) is lower semicontinuous. Indeed, if \(x_m\to x\), choose, after passage to a subsequence, minimizers \(y_m\in\mathcal R_{x_m}\) such that

\[
d(q_j,y_m)=d_j(x_m).
\]

Compactness gives a further subsequence \(y_m\to y\). Closedness of \(\mathcal R\) gives \(y\in\mathcal R_x\), and hence

\[
d_j(x)\le d(q_j,y)
=\liminf_m d_j(x_m).
\]

Set \(\varepsilon_n=2^{-n}\). Let \(s_1(x)\) be the first \(q_j\) satisfying

\[
d_j(x)<\varepsilon_1.
\]

Inductively, once \(s_n\) has been defined, let \(s_{n+1}(x)\) be the first \(q_j\) satisfying

\[
d_j(x)<\varepsilon_{n+1}
\]

and

\[
d(q_j,s_n(x))
<
\varepsilon_n+\varepsilon_{n+1}.
\]

Such a \(q_j\) exists: choose \(a\in\mathcal R_x\) with

\[
d(a,s_n(x))<\varepsilon_n,
\]

then choose a dense-sequence point \(q_j\) within \(\varepsilon_{n+1}\) of \(a\).

Each \(s_n\) is Borel, since it is obtained by choosing the first index satisfying countably many Borel conditions. Moreover,

\[
d(s_{n+1}(x),s_n(x))
<
\varepsilon_n+\varepsilon_{n+1}.
\]

Thus \(s_n(x)\) converges for every \(x\). Its limit \(s(x)\) is Borel. Since

\[
\operatorname{dist}(s_n(x),\mathcal R_x)<\varepsilon_n
\]

and the fiber is closed,

\[
s(x)\in\mathcal R_x.
\]

∎

---

## Lemma 3 — Borel extreme-point representing measures

Let

\[
Z=\operatorname{ex}K.
\]

There exists a Borel map

\[
x\longmapsto \nu_x\in\mathcal P(Z)
\]

from \(K\) to the probability measures on \(Z\), equipped with the weak topology, such that

\[
\int_Z z\,d\nu_x(z)=x \tag{5}
\]

for every \(x\in K\).

Moreover,

\[
\nu_z=\delta_z
\qquad(z\in Z). \tag{6}
\]

### Proof

First, every point of \(K\) admits such a measure.

If \(x\in K^\circ\), choose a line through \(x\). Its intersection with \(K\) is a closed segment

\[
[a,b]
\]

with \(a,b\in\partial K\), and \(x\) is a convex combination of \(a\) and \(b\).

Every boundary point is either extreme or lies in some \(U_n\). In the latter case it is a convex combination of the two extreme endpoints of \(L_n\). Consequently, every point of \(K\) is a convex combination of at most four points of \(Z\).

Let \(\mathcal P(Z)\) be the compact metrizable space of Borel probability measures on \(Z\). Define the continuous barycenter map

\[
b:\mathcal P(Z)\to K,
\qquad
b(\nu)=\int_Zz\,d\nu(z).
\]

The set

\[
\mathcal R
=
\{(x,\nu)\in K\times\mathcal P(Z):b(\nu)=x\}
\]

is compact and every fiber is nonempty. Lemma 2 gives a Borel selector \(x\mapsto\nu_x\).

It remains to prove (6). Let \(z\in Z\), and suppose that \(\nu\) is a probability measure on \(K\) whose barycenter is \(z\). If \(\nu\ne\delta_z\), there is a real linear functional \(a\) such that the random variable \(a(t)\) is not almost surely equal to \(a(z)\).

After replacing \(a\) by \(-a\) if necessary, the set

\[
A=\{t:a(t)>a(z)\}
\]

has positive measure. Since

\[
\int a(t)\,d\nu(t)=a(z),
\]

its complement also has positive measure. Let \(y_A\) and \(y_B\) be the barycenters of the normalized restrictions of \(\nu\) to \(A\) and \(K\setminus A\), respectively. Then

\[
z=\alpha y_A+(1-\alpha)y_B,
\qquad
0<\alpha<1,
\]

and

\[
a(y_A)>a(z),
\]

so \(y_A\ne z\). The displayed convex decomposition then also forces \(y_B\ne z\), contradicting the extremality of \(z\).

Thus the only representing measure of an extreme point is its point mass, proving (6). ∎

---

# IV. Boundaryization of an operator-valued measure

Let \(G\) be any normalized POVM on \(K\). Using the kernel \(x\mapsto\nu_x\), define a POVM \(\widehat G\) on \(Z\) by

\[
\widehat G(S)
=
\int_K \nu_x(S)\,dG(x),
\qquad
S\subseteq Z\text{ Borel}. \tag{7}
\]

The function \(x\mapsto\nu_x(S)\) is Borel. One way to see this is that, for open \(S\), the map

\[
\nu\mapsto\nu(S)
\]

is lower semicontinuous on \(\mathcal P(Z)\); the class of Borel sets for which it is Borel is then a Dynkin system containing the open sets.

Countable additivity of \(\widehat G\) follows from scalar monotone convergence inside the POVM integral.

For every bounded Borel \(h:Z\to\mathbb C\),

\[
\int_Z h(z)\,d\widehat G(z)
=
\int_K
\left(
\int_Zh(z)\,d\nu_x(z)
\right)
dG(x). \tag{8}
\]

This is immediate for indicator functions from (7), hence for simple functions, and then for bounded Borel functions by bounded monotone approximation.

---

## Lemma 4 — reconstruction of an extreme-supported summand

Let \(G\) be a normalized POVM on \(K\), and let \(N\) be a PVM supported on

\[
Z=\operatorname{ex}K.
\]

Suppose

\[
\int_K\ell\,dG
=
\int_Z\ell\,dN
\]

for every affine \(\ell\), and

\[
\int_Kg\,dG
=
\int_Zg\,dN.
\]

Then

\[
\boxed{G=N.}
\]

### Proof

Boundaryize \(G\) using (7). If \(\ell\) is affine, then the barycenter identity gives

\[
\int_Z\ell(z)\,d\nu_x(z)=\ell(x).
\]

Therefore, by (8),

\[
\int_Z\ell\,d\widehat G
=
\int_K\ell\,dG
=
\int_Z\ell\,dN.
\]

Scherer’s planar boundary-rigidity theorem now gives

\[
\widehat G=N. \tag{9}
\]

Define the bounded Borel function

\[
\widetilde g(x)
=
\int_Zg(z)\,d\nu_x(z). \tag{10}
\]

By Jensen’s inequality,

\[
\widetilde g(x)\ge g(x). \tag{11}
\]

Moreover,

\[
\widetilde g(x)=g(x)
\quad\Longleftrightarrow\quad
x\in Z. \tag{12}
\]

To verify strictness, let \(\nu\) be a non-point probability measure and let \(S,T\) be independent random variables with law \(\nu\). Then

\[
\mathbb P(S\ne T)>0.
\]

Strict convexity gives

\[
g\!\left(\frac{S+T}{2}\right)
<
\frac{g(S)+g(T)}2
\]

on a set of positive probability. Consequently,

\[
\begin{aligned}
g\!\left(\int z\,d\nu(z)\right)
&=
g\!\left(\mathbb E\frac{S+T}{2}\right)\\
&\le
\mathbb E g\!\left(\frac{S+T}{2}\right)\\
&<
\mathbb E g(S)
=
\int g\,d\nu.
\end{aligned}
\]

For \(x\notin Z\), the measure \(\nu_x\) cannot be a point mass supported on \(Z\), since its barycenter is \(x\). Hence strict inequality holds. For \(z\in Z\), equation (6) gives equality.

Using (8), (9), and the assumed \(g\)-moment equality,

\[
\begin{aligned}
\int_K\widetilde g\,dG
&=
\int_Zg\,d\widehat G\\
&=
\int_Zg\,dN\\
&=
\int_Kg\,dG.
\end{aligned}
\]

Thus

\[
\int_K(\widetilde g-g)\,dG=0. \tag{13}
\]

Set

\[
h=\widetilde g-g.
\]

Then \(h\ge0\), and by (12),

\[
\{h=0\}=Z.
\]

For

\[
S_m=\{x:h(x)\ge1/m\},
\]

operator monotonicity gives

\[
\frac1mG(S_m)
\le
\int_Kh\,dG
=0.
\]

Hence

\[
G(S_m)=0.
\]

Because

\[
K\setminus Z=\bigcup_{m\ge1}S_m,
\]

strong monotone convergence yields

\[
G(K\setminus Z)=0. \tag{14}
\]

Therefore \(G\) is supported on \(Z\). On \(Z\), the selected kernel is the identity kernel:

\[
\nu_z=\delta_z.
\]

Consequently the boundaryization \(\widehat G\) is now just \(G\) itself. From (9),

\[
G=\widehat G=N.
\]

∎

This is the step that removes the diffuse-boundary obstruction. Scherer determines the boundaryized POVM, while strict convexity proves that boundaryization could not have replaced any nonextreme mass.

---

# V. Reconstruction on the three spectral strata

Let

\[
Z=\operatorname{ex}K,
\]

and let \(U_n=\operatorname{ri}L_n\) be the face interiors from Lemma 1.

Define the pairwise orthogonal spectral projections

\[
R_0=F(K^\circ),
\qquad
R_*=F(Z),
\qquad
R_n=F(U_n).
\]

By the disjoint Borel decomposition (4),

\[
R_0+R_*+\sum_{n\ge1}R_n=I \tag{15}
\]

in the strong operator topology.

For each stratum define the compressed POVM

\[
E_i(S)=R_iE(S)R_i
\]

on \(R_iH\), and the corresponding restricted PVM

\[
F_i(S)=F(S\cap D_i),
\]

where

\[
D_0=K^\circ,\qquad D_*=Z,\qquad D_n=U_n.
\]

Compression of the moment equalities gives, for every affine \(\ell\),

\[
\int_K\ell\,dE_i
=
\int_K\ell\,dF_i, \tag{16}
\]

and similarly

\[
\int_Kg\,dE_i
=
\int_Kg\,dF_i. \tag{17}
\]

We prove \(E_i=F_i\) separately on every stratum.

---

## 1. The interior summand

Fix compact

\[
C\subseteq K^\circ,
\]

and put

\[
Q=F(C),
\qquad
Q'=R_0-Q=F(K^\circ\setminus C).
\]

Choose compact sets \(J_m\subseteq K\setminus C\) increasing to \(K\setminus C\). By common-domain localization,

\[
QE(J_m)Q=0.
\]

Passing to the strong limit,

\[
QE(K\setminus C)Q=0.
\]

Therefore

\[
QE_0(C)Q=Q. \tag{18}
\]

Next choose compact sets

\[
C_m\subseteq K^\circ\setminus C
\]

increasing to \(K^\circ\setminus C\). Localization with the two sets in the opposite order gives

\[
F(C_m)E(C)F(C_m)=0.
\]

Passing to the limit,

\[
Q'E_0(C)Q'=0. \tag{19}
\]

On the Hilbert space \(R_0H\),

\[
0\le E_0(C)\le R_0.
\]

Equations (18), (19), and positivity imply

\[
E_0(C)=Q=F(C).
\]

By compact-to-Borel regularity and polarization,

\[
E_0(S)=F(S)
\]

for every Borel \(S\subseteq K^\circ\). Since \(E_0(K)=R_0\), this also implies

\[
E_0(K\setminus K^\circ)=0.
\]

Hence

\[
\boxed{E_0=F_0.} \tag{20}
\]

---

## 2. Every flat-face summand

Fix \(n\). Since \(L_n\) is an exposed face, choose an affine function \(r_n\ge0\) on \(K\) with

\[
L_n=\{r_n=0\}.
\]

Affine exposure gives

\[
F(L_n)E(K\setminus L_n)F(L_n)=0. \tag{21}
\]

Thus the POVM

\[
S\longmapsto F(L_n)E(S)F(L_n)
\]

is supported on the interval \(L_n\). On that interval it agrees with \(F|_{L_n}\) on:

- the constant function;
- an affine coordinate along \(L_n\);
- the strictly convex function \(g|_{L_n}\).

The frozen interval reconstruction theorem therefore gives

\[
F(L_n)E(S)F(L_n)
=
F(S\cap L_n) \tag{22}
\]

for every Borel \(S\subseteq K\).

Compressing (22) further by

\[
R_n=F(U_n)
\]

gives

\[
E_n(S)
=
F(S\cap U_n).
\]

Therefore

\[
\boxed{E_n=F_n\quad\text{for every }n.} \tag{23}
\]

The edge theorem is used only after affine exposure has forced support on the edge.

---

## 3. The diffuse extreme-point summand

The POVM

\[
E_*(S)=R_*E(S)R_*
\]

is normalized on \(R_*H\). The PVM

\[
F_*(S)=F(S\cap Z)
\]

is supported on \(Z=\operatorname{ex}K\).

Equations (16) and (17) show that \(E_*\) and \(F_*\) agree on all affine functions and on \(g\). Lemma 4 therefore yields

\[
\boxed{E_*=F_*.} \tag{24}
\]

No atomicity of \(F|_Z\) is used.

---

# VI. Positivity glues all strata and kills every cross term

We now know that for every Borel \(S\subseteq K\),

\[
R_iE(S)R_i
=
F(S\cap D_i) \tag{25}
\]

for every stratum \(D_i\).

Set

\[
T=E(S),
\qquad
Q_i=F(S\cap D_i),
\qquad
P_i=F(D_i\setminus S).
\]

Then

\[
R_i=Q_i+P_i,
\]

and (25) gives

\[
Q_iTQ_i=Q_i, \tag{26}
\]

\[
P_iTP_i=0. \tag{27}
\]

Because \(0\le T\le I\), equation (26) implies

\[
TQ_i=Q_i,
\]

while positivity and (27) imply

\[
TP_i=0.
\]

The strong joins are

\[
\bigvee_iQ_i
=
F(S), \tag{28}
\]

and

\[
\bigvee_iP_i
=
F(K\setminus S). \tag{29}
\]

Hence \(T\) is the identity on \(F(S)H\) and zero on its orthogonal complement. Therefore

\[
T=F(S).
\]

Since \(S\) was arbitrary,

\[
\boxed{E=F.}
\]

This completes the proof. ∎

---

# VII. Operator-theoretic corollary

## Corollary

Let \(K\subseteq\mathbb R^m\) be an arbitrary compact convex set of affine dimension at most two.

Let

\[
T_1,\ldots,T_m
\]

be commuting bounded self-adjoint operators with joint spectrum contained in \(K\). Let \(P\) be an orthogonal projection, put

\[
H=\operatorname{ran}P,
\qquad
A_j=PT_jP|_H,
\]

and assume that the \(A_j\) commute.

Let

\[
g:K\to\mathbb R
\]

be continuous and strictly convex. If

\[
Pg(T_1,\ldots,T_m)P|_H
=
g(A_1,\ldots,A_m),
\]

then \(P\) reduces every \(T_j\).

### Proof

Let \(V:H\to\mathcal K\) be the inclusion. Compress the joint spectral PVM of the \(T_j\) to obtain a POVM \(E\). Let \(F\) be the joint spectral PVM of the commuting compressed tuple \((A_1,\ldots,A_m)\).

The compressed joint spectrum is contained in \(K\). Indeed, if an affine function \(\ell\) is nonnegative on \(K\), then

\[
\ell(T_1,\ldots,T_m)\ge0,
\]

and therefore

\[
\ell(A_1,\ldots,A_m)
=
V^*\ell(T_1,\ldots,T_m)V
\ge0.
\]

If a spectral point of the compressed tuple lay outside \(K\), finite-dimensional affine separation would provide an affine \(\ell\ge0\) on \(K\) that is negative at that point, a contradiction.

The measures \(E\) and \(F\) agree on all affine functions and on \(g\). The theorem gives

\[
E=F.
\]

In particular, for every \(j\),

\[
V^*T_j^2V=A_j^2.
\]

But

\[
\begin{aligned}
V^*T_j^2V-A_j^2
&=
V^*T_j^2V-V^*T_jVV^*T_jV\\
&=
V^*T_j(I-P)T_jV\\
&=
\bigl((I-P)T_jV\bigr)^*
\bigl((I-P)T_jV\bigr).
\end{aligned}
\]

Thus

\[
(I-P)T_jV=0,
\]

equivalently,

\[
(I-P)T_jP=0.
\]

Taking adjoints gives

\[
PT_j(I-P)=0.
\]

Hence

\[
PT_j=T_jP
\]

for every \(j\). ∎

---

## What overcomes the diffuse-boundary obstacle

The finite-edge join from the polygon proof does not extend directly. The replacement mechanism is:

\[
\boxed{
\text{spectral stratification}
+
\text{measurable extreme-boundary replacement}
+
\text{Scherer rigidity}
+
\text{strict Jensen equality}.
}
\]

More explicitly:

1. Flat-face interiors form only a countable family and are reconstructed by affine exposure plus the interval theorem.
2. The remaining boundary spectrum is supported on the compact extreme set \(Z\), possibly diffusely.
3. A Borel representing kernel replaces every point of \(K\) by a probability measure on \(Z\).
4. Scherer’s theorem uniquely determines the resulting boundaryized POVM.
5. Strict convexity supplies a strictly positive Jensen gap at every nonextreme point.
6. Equality of the \(g\)-moments forces that gap to vanish operatorially, proving that the original POVM was already supported on \(Z\).
7. Positivity then glues the interior, face and extreme summands and eliminates all cross terms.

The inverse-square Bregman argument is used only on parameter spaces of affine dimension at most two. No claim is made beyond that range.