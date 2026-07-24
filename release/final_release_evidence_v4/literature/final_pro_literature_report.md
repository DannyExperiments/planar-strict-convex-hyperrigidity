# Verdict

**No theorem located through July 24, 2026 proves the full claim with all three quantifiers simultaneously:**

[
\dim_{\mathrm{aff}}K\le 2,\qquad
g\in C(K)\text{ arbitrary strictly convex},\qquad
\text{all representations, including diffuse spectra}.
]

The exact status is:

* **Affine dimension (0) or (1): proved.** Brown proves the one-variable statement directly, and Scherer’s planar convex-body theorem implies it after a graph construction.
* **Affine dimension (2), arbitrary (g): not covered by Scherer 2411.11709 or by any prior/subsequent theorem I found.**
* **Affine dimension (2), special (g): proved** for positive-definite quadratic functions, radial even powers, certain monomial systems, and cases whose associated graph hull is a compact spectrahedron.
* **Arbitrary (K,g), scalar measures or purely atomic PVMs: proved.**
* **Arbitrary planar (K,g), diffuse PVMs: this is the missing case.**

Scherer explicitly says that the commutative/function-system form of the hyperrigidity conjecture remains unresolved; his theorem treats (A(L)) when the convex state space (L) itself is planar. ([arXiv][1])

**Confidence:** high on the mathematical reduction and coverage distinctions; moderate-high on the negative literature conclusion.

---

# 1. The exact graph-hull reduction

Let

[
S_g=\operatorname{span}_{\mathbb C}(A(K),g)\subset C(K),
]

and define

[
\Gamma_g={(x,g(x)):x\in K},\qquad
L_g=\operatorname{conv}\Gamma_g
\subset \operatorname{Aff}(K)\times\mathbb R.
]

There is a canonical unital complete order isomorphism

[
A(L_g)\longrightarrow S_g,\qquad
\big[(x,t)\mapsto a(x)+ct\big]\longmapsto a+cg.
]

Indeed, an affine function on (L_g) is determined by its restriction to (\Gamma_g), and it is nonnegative on (L_g) exactly when it is nonnegative on (\Gamma_g).

Strict convexity gives

[
\operatorname{ex}L_g=\Gamma_g.
]

The proof is short. If

[
(x,g(x))=\sum_j\lambda_j(x_j,g(x_j)),
]

then (x=\sum_j\lambda_jx_j) and

[
g(x)=\sum_j\lambda_jg(x_j).
]

Strict Jensen equality forces every (x_j=x). Hence every graph point is extreme. Conversely, (L_g) is the convex hull of the compact set (\Gamma_g), so every extreme point of (L_g) lies in (\Gamma_g).

Consequently,

[
\boxed{
S_g\text{ is hyperrigid in }C(K)
\iff
A(L_g)\text{ is hyperrigid in }C(\operatorname{ex}L_g).
}
]

This is the exact convex-geometric reformulation of the claim.

## The decisive dimension shift

If (d=\dim_{\mathrm{aff}}K\ge1), strict convexity implies that (g) is nonaffine, and therefore

[
\dim_{\mathrm{aff}}L_g=d+1.
]

Thus:

[
\begin{array}{c|c}
\dim_{\mathrm{aff}}K & \dim_{\mathrm{aff}}L_g\ \hline
0 & 0\
1 & 2\
2 & 3.
\end{array}
]

Therefore Scherer’s theorem for compact convex subsets of (\mathbb R^2):

> “Let (K\subset\mathbb R^2) be compact and convex. Then (A(K)) is hyperrigid in (C(\operatorname{ex}K)).”

settles the graph-lifted problem only when the **original** (K) has affine dimension at most (1). ([arXiv][1])

For an original planar (K), (S_g) is a four-dimensional function system and its state space (L_g) is generally a three-dimensional convex body. Scherer’s theorem does not apply.

The exact unresolved geometric formulation is therefore:

[
\boxed{
\begin{minipage}{0.84\linewidth}
For every compact convex (L\subset\mathbb R^3) that is the convex hull of the graph of a continuous strictly convex function over a planar compact convex set, is (A(L)) hyperrigid in (C(\operatorname{ex}L))?
\end{minipage}}
]

I found no theorem proving this graph-hull subclass in full.

---

# 2. Coverage table

Here “planar (K)” refers to the original (K) in the question, not the lifted convex body (L_g).

| Result                             |       Arbitrary continuous strictly convex (g) |          Arbitrary planar (K) |      Diffuse spectra | What it actually proves                                     |   |                                                             |
| ---------------------------------- | ---------------------------------------------: | ----------------------------: | -------------------: | ----------------------------------------------------------- | - | ----------------------------------------------------------- |
| Classical Choquet/Korovkin theorem |                                        **Yes** |                       **Yes** |               **No** | Scalar representing measures are unique                     |   |                                                             |
| Arveson direct-sum argument        |                                        **Yes** |                       **Yes** |               **No** | Purely atomic PVMs                                          |   |                                                             |
| Petz operator-Jensen equality      |                   No: operator-convex (g) only | No: one self-adjoint variable |              **Yes** | Multiplicativity from one-variable operator-Jensen equality |   |                                                             |
| Brown 2016                         |                                        **Yes** |   No: affine dimension (\le1) |              **Yes** | Full one-variable compression/POVM rigidity                 |   |                                                             |
| Scherer 2411.11709                 | **Yes after graph lift only for (\dim K\le1)** |                        **No** | **Yes** in its scope | (A(L)) for all planar convex (L)                            |   |                                                             |
| Shankar 2020                       |                              No: quadratic (g) |                       **Yes** |              **Yes** | (g=                                                         | z | ^2), hence positive-definite quadratics after affine change |
| Pietrzycki–Stochel                 |                     No: monomial/power systems |                       **Yes** |              **Yes** | Includes (g(z)=                                             | z | ^{2r})                                                      |
| Scherer spectrahedra 2026          |                                             No |                   Conditional |              **Yes** | Applies when (L_g) is a compact spectrahedron               |   |                                                             |
| Exact claim                        |                                  **Not found** |                 **Not found** |        **Not found** | Missing arbitrary planar (K,g) with diffuse spectrum        |   |                                                             |

---

# 3. Scalar Choquet and Korovkin theory proves only the irreducible case

Hodiș–Măduță state:

> “If (f\in C(K)) is strictly convex, then (\operatorname{Ch}(S(f))=K).”

They consequently identify (S(f)) as a scalar Korovkin subspace. Their (K) may be an arbitrary compact metrizable convex set in a locally convex space, so this is substantially more general than the planar setting. 

The elementary proof is exactly the expected Jensen argument. If a probability measure (\mu) represents evaluation at (x) on (S_g), then

[
\int_K y,d\mu(y)=x,\qquad
\int_K g(y),d\mu(y)=g(x).
]

Jensen gives

[
g(x)=g!\left(\int y,d\mu(y)\right)
\le \int g(y),d\mu(y)=g(x).
]

Strict convexity forces (\mu=\delta_x).

Thus every evaluation representation of (C(K)) has the unique extension property relative to (S_g). Equivalently,

[
\partial_{S_g}K=K.
]

But that is only the hypothesis of the **commutative hyperrigidity conjecture**, not its conclusion.

Arveson’s fundamental characterization is:

> “(S) is hyperrigid iff every nondegenerate representation has the unique extension property.”



Full Choquet boundary establishes this only for the irreducible representations, which in (C(K)) are the point evaluations.

## Atomic PVMs are covered

Arveson’s Proposition 4.4 says that an arbitrary direct sum of UCP maps having the unique extension property again has the unique extension property. 

Therefore, for every compact convex (K) and every continuous strictly convex (g):

[
\boxed{\text{The claim holds for every purely atomic PVM.}}
]

Indeed, an atomic representation is a direct sum, with multiplicities, of evaluations (f\mapsto f(x)).

## Diffuse PVMs are precisely where this argument stops

A diffuse representation is a direct integral, not a direct sum of evaluations. There is no general theorem saying that fiberwise scalar uniqueness passes to unique extension for such direct integrals.

Davidson–Kennedy identify the correct stronger condition. Their Theorem 7.6 is, in normalized notation,

[
\mu\text{ is maximal in the dilation order}
\iff
\pi_\mu:C(K)\to B(L^2(\mu))
\text{ has UEP relative to }A(K).
]



They then ask explicitly:

> If a function system has full Choquet boundary, must every Choquet-maximal measure be maximal in the dilation order?

A positive answer would prove the commutative hyperrigidity conjecture; a negative answer would give a commutative counterexample. 

They also prove that the Choquet and dilation orders are genuinely different, but their example does **not** show that their maximal elements differ, so it does not answer the hyperrigidity question. 

For (S_g), the graph-hull identification turns this into the same question for (A(L_g)).

---

# 4. The Davidson–Kennedy version warning

There is a significant bibliographic trap.

The 2016 arXiv v1 abstract said:

> “As an application, we prove Arveson’s hyperrigidity conjecture for function systems.”

([arXiv][2])

That conclusion was removed. The final 2021 v4/journal version says instead that the problem is reduced to comparing Choquet-maximal and dilation-maximal measures, and that the underlying orders differ in general. ([arXiv][3])

Accordingly, older papers or preprints stating that the commutative case had already been proved may be relying on the withdrawn v1 claim. The final Davidson–Kennedy theorem does **not** imply the present claim.

---

# 5. One-variable Jensen/compression rigidity: Brown gives the complete theorem

Brown’s Theorem 2.1 states that if (H_i\to H) weakly and (f(H_i)\to f(H)) weakly for continuous strictly convex (f), then every bounded continuous functional calculus converges strongly. ([arXiv][4])

The direct compression consequence is:

> “If (f(\operatorname{pr}(H))=\operatorname{pr}(f(H))), then (M) is invariant for (H).”

([arXiv][4])

Because (H) is self-adjoint, invariance is equivalent to reduction.

Brown’s UCP formulation is:

[
\Phi(f(H))=f(\Phi(H))
\quad\Longrightarrow\quad
\Phi|_{C^*(H)}\text{ is multiplicative}.
]

Brown states multiplicativity first on the polynomial algebra; continuity gives it on (C^*(H)). The Hilbert spaces are arbitrary, so there is no finite-rank, atomic, or discrete-spectrum restriction. ([arXiv][4])

Consequently:

[
\boxed{
\dim_{\mathrm{aff}}K\le1
\implies
\operatorname{span}(A(K),g)\text{ is hyperrigid}
}
]

for every continuous strictly convex (g), including representations with diffuse spectrum.

## Arveson’s earlier finite/discrete results

Arveson proved the finite-dimensional equality theorem:

[
\phi(f(A))=f(\phi(A))
\Longrightarrow
\phi\text{ is multiplicative on the algebra generated by }A,
]

for strictly convex (f), finite-dimensional Hilbert spaces, and UCP maps between matrix algebras. 

He also observed that arbitrary strictly convex (f) gives hyperrigidity when the self-adjoint operator has discrete spectrum, while explicitly leaving the nondiscrete case open.  Brown later removed that one-variable spectral restriction.

These are not multivariable theorems.

---

# 6. Ordinary Jensen equality versus operator Jensen equality

Petz’s equality theorem concerns one self-adjoint element and a nonaffine **operator-convex** function. In that setting,

[
f(\Phi(a))=\Phi(f(a))
]

is equivalent to multiplicativity of (\Phi) on (C^*(a)). ([Springer][5])

This does not imply the present claim:

1. A continuous strictly convex function need not be operator convex.
2. The theorem is for one self-adjoint element.
3. For a bivariate continuous (g), there is no general operator Jensen inequality based merely on ordinary convexity.
4. Compressing a commuting pair need not produce another commuting pair.

Hansen–Pedersen’s operator Jensen theorem likewise requires operator convexity and noncommutative operator combinations; it does not turn arbitrary ordinary convexity on (K\subset\mathbb R^2) into the required compression inequality. ([arXiv][6])

Brown’s theorem is remarkable precisely because it obtains one-variable rigidity for every continuous strictly convex (f), without assuming operator convexity. I found no multivariable analogue with the same generality.

---

# 7. Scherer arXiv:2411.11709

Scherer’s main result is exactly:

[
\boxed{
L\subset\mathbb R^2\text{ compact convex}
\implies
A(L)\text{ is hyperrigid in }C(\operatorname{ex}L).
}
]

([arXiv][1])

It is a theorem about the **dimension of the convex state space**, not about the number of original coordinate variables before adjoining (g).

Applied to (S_g\cong A(L_g)):

* If (\dim_{\mathrm{aff}}K=0), the result is trivial.
* If (\dim_{\mathrm{aff}}K=1), then (L_g\subset\mathbb R^2), so Scherer applies.
* If (\dim_{\mathrm{aff}}K=2), then (L_g\subset\mathbb R^3), so Scherer does not apply.

The obstruction in Scherer’s proof is genuinely dimension-sensitive: the proof uses planar boundary geometry and rectifiable boundary arcs, and the paper notes that the analogous finite-length mechanism fails in higher dimension. ([arXiv][1])

Thus Scherer 2411.11709 does **not** prove the claim for arbitrary planar (K).

It does cover diffuse spectra within its actual scope, because its conclusion is hyperrigidity, quantified over every representation.

---

# 8. Special planar cases that are known

## 8.1 Positive-definite quadratic (g)

Shankar proves:

> “If (T) is normal, then ({T,TT^*}) is a hyperrigid generator for (C^*(T)).”



Take (K\subset\mathbb C), let (z=x+iy) be the coordinate function, and let (T) be its functional calculus. Then

[
TT^*=|z|^2=x^2+y^2.
]

Therefore

[
\operatorname{span}{1,x,y,x^2+y^2}
]

is hyperrigid in (C(K)) for every compact planar (K), with no atomicity restriction.

After an invertible affine change of coordinates and adding an affine function, this covers every strictly convex quadratic

[
g(x)=x^{\mathsf T}Qx+\ell(x)+c,\qquad Q>0.
]

So the exact claim is known for arbitrary planar (K) when (g) is positive-definite quadratic.

## 8.2 Radial powers and monomial systems

Pietrzycki–Stochel prove the following exact criterion. Let (A=C^*(t)) be commutative and

[
G_\Xi={t^{*m}t^n:(m,n)\in\Xi}.
]

If (\Xi) contains ((p,q)) and ((r,r)) with

[
p\ne q,\qquad p+q<2r,
]

and (G_\Xi) generates (A), then (G_\Xi) is hyperrigid. ([arXiv][7])

Taking ((p,q)=(1,0)) gives, for every (r\ge1),

[
{z,|z|^{2r}}
]

as a hyperrigid generating set for (C(K)). Hence

[
\operatorname{span}{1,x,y,(x^2+y^2)^r}
]

is hyperrigid for every compact planar (K). Their theorem covers arbitrary Hilbert spaces and therefore diffuse spectral measures. ([arXiv][7])

It does not cover a general continuous strictly convex (g).

## 8.3 Spectrahedral graph hulls

Scherer’s 2026 spectrahedron theorem states:

> “Let (L) be a compact spectrahedron with (\operatorname{ex}L) closed. Then (A(L)) is hyperrigid in (C(\operatorname{ex}L)).”

([arXiv][8])

Since (\operatorname{ex}L_g=\Gamma_g) is compact, the closed-extreme-boundary condition is automatic for a graph hull. Therefore:

[
\boxed{
L_g\text{ compact spectrahedral}
\implies
S_g\text{ hyperrigid}.
}
]

But arbitrary graph hulls of arbitrary continuous strictly convex functions are not spectrahedra, so this is only a conditional subclass. It does cover diffuse representations whenever the hypothesis holds.

---

# 9. The Kleski theorem is weaker than hyperrigidity

Kleski proves that when (A) is Type I and every irreducible representation is a boundary representation for (S), any UCP map

[
\psi:A\longrightarrow A''
]

fixing (S) must fix (A). 

For (A=C(K)) and (S=S_g), the hypotheses hold because strict convexity gives full Choquet boundary. But the conclusion only concerns maps with range in the particular bicommutant (A''). Hyperrigidity requires control of arbitrary UCP maps

[
C(K)\longrightarrow B(H)
]

associated with arbitrary representations and POVMs.

Thus Kleski supplies a substantial Korovkin-type result but does not imply the requested POVM/PVM uniqueness for diffuse representations.

---

# 10. Exact POVM formulation

Let (E) be a PVM and (F) a normalized POVM on (K). Define

[
\pi_E(f)=\int_K f,dE,\qquad
\Phi_F(f)=\int_K f,dF.
]

Then agreement on all affine functions and (g) means exactly

[
\Phi_F|*{S_g}=\pi_E|*{S_g}.
]

Therefore

[
S_g\text{ hyperrigid}
\iff
\left[
\begin{array}{c}
\displaystyle\int a,dF=\int a,dE\quad(a\in A(K)),[1ex]
\displaystyle\int g,dF=\int g,dE
\end{array}
\right]
\Longrightarrow F=E.
]

The implication from equality of UCP maps to equality of the measures follows by applying scalar matrix coefficients and uniqueness of regular Borel measures.

The known status is:

* Scalar (F): yes, by strict Jensen equality.
* Purely atomic PVM (E): yes, by direct sums of evaluation UEPs.
* One-dimensional (K): yes, including diffuse (E), by Brown.
* Planar (K), quadratic or specified monomial (g): yes.
* Arbitrary planar (K,g), diffuse (E): no theorem found.

---

# 11. Exact compression formulation and its necessary caveat

Let (X=(X_1,X_2)) be a commuting self-adjoint pair with joint spectrum in (K), and let (M\subset H) be closed. Set

[
Y_j=P_MX_j|_M.
]

For arbitrary continuous bivariate (g), the expression (g(Y_1,Y_2)) is canonically defined only if (Y_1,Y_2) commute and their joint spectrum lies in (K). Under that hypothesis,

[
P_Ma(X)|_M=a(Y)\qquad(a\in A(K))
]

holds automatically. Hence the additional equality

[
P_Mg(X)|_M=g(Y)
]

says precisely that the compression UCP map agrees on (S_g) with the representation induced by (Y).

Thus the correct compression statement is

[
\boxed{
\begin{aligned}
&Y_1,Y_2\text{ commute},\quad \sigma(Y)\subset K,\
&P_Mg(X)|_M=g(Y)
\end{aligned}
\quad\Longrightarrow\quad
M\text{ reduces }X_1,X_2.
}
]

This is equivalent to hyperrigidity of (S_g): in a Stinespring dilation, unique extension is equivalent to the compressed subspace reducing the dilating representation.

Without the compressed-commutativity assumption, (g(Y_1,Y_2)) is not defined for a general continuous (g), so the informal compression formulation is otherwise ambiguous.

---

# 12. Citation audit of Scherer 2411.11709 through July 2026

The publisher currently reports six citations. I located the following six direct citing works. ([ScienceDirect][9])

1. **Pietrzycki–Stochel, Hyperrigidity I.**
   Gives monomial and operator-moment criteria, including radial powers; no arbitrary (g). ([arXiv][10])

2. **Pietrzycki–Stochel, Hyperrigidity II.**
   Develops (R)-dilations, intertwining criteria, ideals, and decomposition theorems. It gives characterizations, not a theorem for arbitrary three-dimensional graph hulls. ([arXiv][11])

3. **Pietrzycki–Stochel, Hyperrigidity III.**
   A preliminary representation-only reformulation of hyperrigidity; it does not establish the required commutative class. ([arXiv][12])

4. **Clouâtre–Krisko, (C^*)-supports and abnormalities.**
   Gives structural characterizations of UEP and hyperrigidity through uniqueness of (C^*)-supports; no new arbitrary convex-body class. ([arXiv][13])

5. **Clouâtre, A new obstruction to Arveson’s hyperrigidity conjecture.**
   Constructs and analyzes noncommutative obstructions; its construction is explicitly described as a noncommutative pathology, not a counterexample or positive theorem for function systems. ([arXiv][14])

6. **Scherer, The Hyperrigidity Conjecture for Spectrahedra.**
   Gives the conditional spectrahedral theorem discussed above. ([arXiv][8])

None of these six proves hyperrigidity for all three-dimensional graph hulls (L_g).

Among the substantive works cited by Scherer himself:

* **Arveson** supplies the UEP characterization, direct-sum theorem, discrete-spectrum and finite-dimensional Jensen results.
* **Brown** supplies arbitrary continuous strict convexity in one variable.
* **Davidson–Kennedy** isolate the diffuse dilation-order obstruction.
* **Kleski** supplies a weaker range-restricted Korovkin theorem.
* **Pietrzycki–Stochel** supply special monomial systems.
* The Clouâtre papers provide local or structural boundary machinery rather than a theorem for arbitrary graph hulls.
* The remaining geometric references support Scherer’s planar proof and do not yield a three-dimensional extension. ([arXiv][1])

---

# Bottom line

The strongest accurate statement is:

[
\boxed{
\begin{array}{l}
\text{For every compact convex }K\text{ with }\dim_{\mathrm{aff}}K\le1
\text{ and every continuous strictly convex }g,\
\operatorname{span}(A(K),g)\text{ is hyperrigid, including for diffuse spectra.}
\end{array}}
]

For (\dim_{\mathrm{aff}}K=2), the claim is equivalent to hyperrigidity of (A(L_g)) for a special class of compact convex bodies (L_g\subset\mathbb R^3). The literature establishes this for quadratics, radial powers, other monomial systems, and spectrahedral graph hulls, but **no theorem found through July 24, 2026 covers arbitrary continuous strictly convex (g), arbitrary planar compact convex (K), and diffuse spectra simultaneously**. The scalar and atomic cases are classical; the unresolved content is the passage from pointwise/atomic Choquet uniqueness to diffuse operator-valued unique extension.

[1]: https://arxiv.org/html/2411.11709 "The Hyperrigidity Conjecture for compact convex sets in ℝ²"
[2]: https://arxiv.org/abs/1608.02334v1 "[1608.02334v1] Choquet order and hyperrigidity for function systems"
[3]: https://arxiv.org/abs/1608.02334v4 "[1608.02334v4] Choquet order and hyperrigidity for function systems"
[4]: https://arxiv.org/pdf/1410.6800 "arXiv:1410.6800v3  [math.FA]  18 May 2016"
[5]: https://link.springer.com/article/10.1007/BF01195811?utm_source=chatgpt.com "On the equality in Jensen's inequality for operator convex ..."
[6]: https://arxiv.org/abs/math/0204049?utm_source=chatgpt.com "Jensen's Operator Inequality"
[7]: https://arxiv.org/pdf/2405.20814 "Hyperrigidity I: singly generated commutative $C^*$-algebras"
[8]: https://arxiv.org/html/2601.16075v1 "https://arxiv.org/html/2601.16075v1"
[9]: https://www.sciencedirect.com/science/article/pii/S0022123626002661 "https://www.sciencedirect.com/science/article/pii/S0022123626002661"
[10]: https://arxiv.org/html/2405.20814v4 "https://arxiv.org/html/2405.20814v4"
[11]: https://arxiv.org/abs/2411.04860 "[2411.04860] Hyperrigidity II: $R$-dilations, ideals and decompositions"
[12]: https://arxiv.org/abs/2501.04709 "[2501.04709] Hyperrigidity III"
[13]: https://arxiv.org/abs/2501.07544 "[2501.07544] $C^*$-supports and abnormalities of operator systems"
[14]: https://arxiv.org/abs/2509.19238 "[2509.19238] A new obstruction to Arveson's hyperrigidity conjecture"
