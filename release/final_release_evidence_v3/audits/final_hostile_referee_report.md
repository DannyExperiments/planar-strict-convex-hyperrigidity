# Hostile mathematical referee report

**Complete standalone report:** [Download the preservation-ready Markdown report](sandbox:/mnt/data/hostile_referee_report_planar_strict_convex_hyperrigidity.md)
**Manuscript audited:** [Download the submitted TeX source](sandbox:/mnt/data/planar_strict_convex_hyperrigidity.tex)

**Report SHA-256:** `24a882ba3c9ab1b3059d0c66de3fd096cd594b3de01f3d6e2a76aa3fb945890a`
**Manuscript SHA-256:** `8bf933d2ff955c669b455693102c02d0a08f3326cedd39e57c421d4836edc5e7`

## Executive verdict

The mathematical core survives hostile review. I found no fatal internal gap in the stated planar POVM/PVM uniqueness theorem. The Douglas factorization is oriented correctly; the reciprocal truncation, joint measurability, Tonelli, and monotone-convergence steps are valid; the Minty covering argument gives the critical divergence in affine dimensions one and two; the interval, boundary, and cross-term reconstructions close; and the external planar theorem attributed to Scherer is invoked at the exact strength in which it is stated. Scherer’s theorem applies to arbitrary Hilbert spaces and imposes no atomicity requirement on the spectral measure. ([[arXiv](https://arxiv.org/pdf/2411.11709)][1])

There are exactly two mathematical defects:

1. Lemma 2.3 omits affine dimension zero and uses an undefined cutoff (r_0).
2. Lemma 2.6 omits the degenerate interval (a=b).

Both are local and completely repairable. Neither omitted case is used in the nontrivial proof of Theorem 1.1. Consequently, the main theorem receives **PASS**, rather than REPAIRABLE.

The novelty claim is not established. Negative literature searches cannot prove priority, and the discussion is already incomplete because it omits Scherer’s January 2026 spectrahedra preprint. That result does not subsume the submitted theorem for arbitrary strictly convex graph hulls, but it is close enough to require discussion. ([[arXiv](https://arxiv.org/abs/2601.16075)][2])

The manuscript is not responsibly releasable as submitted. It requires repairs, not withdrawal.

## Result-by-result dispositions

| Numbered result                  | Verdict           |
| -------------------------------- | ----------------- |
| Theorem 1.1, `thm:main`          | **PASS**          |
| Corollary 1.2, `cor:square`      | **PASS**          |
| Lemma 2.1, `lem:borel-selection` | **PASS**          |
| Lemma 2.2, `lem:selector`        | **PASS**          |
| Lemma 2.3, `lem:energy`          | **REPAIRABLE**    |
| Lemma 2.4, `lem:localization`    | **PASS**          |
| Lemma 2.5, `lem:exposure`        | **PASS**          |
| Lemma 2.6, `lem:interval`        | **REPAIRABLE**    |
| Lemma 3.1, `lem:stratification`  | **PASS**          |
| Lemma 3.2, `lem:kernel`          | **PASS**          |
| Theorem 3.3, `thm:scherer`       | **PASS** as cited |
| Lemma 3.4, `lem:extreme`         | **PASS**          |
| Corollary 5.1, `cor:tuple`       | **PASS**          |
| Corollary 5.2, `cor:hyperrigid`  | **PASS**          |

There are no numbered propositions.

## Required corrections

### Lemma 2.3 — REPAIRABLE

**Opening words:** “Critical reciprocal energy. Let (C\subset\operatorname{ri}K) be compact and let (\mu) be a nonzero finite Borel measure on (C).”

**Defect:** The section permits affine dimension (d=0), but the proof concludes only that the critical integral diverges for (d=1,2). It also integrates to (r_0) without previously defining (r_0), while the stated covering estimate cannot hold in its given form for all large (r).

**Complete correction:** Insert at the beginning of the proof:

> If (d=0), then (K), and hence the nonempty support set (C), consists of one point (z_0). Since (D_{z_0}(z_0)=0) and (\mu(C)>0), the double integral is (+\infty). Hence assume (d\in{1,2}). Choose (r_0\in(0,1]) and (M<\infty) such that, for every (0<r\le r_0), the bounded set (U(C)) meets at most (Mr^{-d}) half-open grid cubes of diameter at most (r).

Assert the subsequent covering and mass estimates only for (0<r\le r_0). Then

[
\int_0^{r_0}r^{d-3},dr=+\infty
]

for (d=1,2), completing all cases.

### Lemma 2.6 — REPAIRABLE

**Opening words:** “Interval reconstruction. Let (I=[a,b]).”

**Defect:** The proof immediately invokes the distinct endpoints, the open interval ((a,b)), and two endpoint exposure functions. It does not cover (a=b).

**Complete correction:** Insert at the beginning:

> If (a=b), then (I) is a singleton. Its only Borel sets are (\varnothing) and (I), and normalization gives (E(I)=F(I)=I); hence (E=F). Assume henceforth that (a<b).

The remaining argument is correct as written.

Neither omission propagates: affine dimension one gives a nondegenerate interval, each boundary segment (L_n) is explicitly nondegenerate, and the zero-dimensional case is separately handled in the main proof.

## Load-bearing conclusions

The POVM/UCP and PVM/representation correspondences are used correctly. Since the domain is commutative, positivity implies complete positivity. Equality on all continuous functions recovers the operator-valued measures by scalar regular-measure uniqueness and polarization.

The main theorem is exactly the unique-extension property for every representation relative to

[
S_g=\operatorname{span}_{\mathbb C}(A(K)\cup{g}).
]

The affine coordinates separate points, so (S_g) generates (C(K)) by Stone–Weierstrass. Because (K) is compact and finite-dimensional, (C(K)) is automatically separable. Thus the usual unique-extension characterization of hyperrigidity applies. The phrase “no separability assumption” is defensible only when explicitly restricted to the Hilbert space.

The relative subgradient construction is correct. Subgradients exist on (\operatorname{ri}K), are uniformly bounded on a common compact interior domain, form a compact graph, and admit a Borel selector. Strict convexity gives strictly positive Bregman divergence off the diagonal, and compactness supplies a uniform positive lower bound between disjoint compact sets. No differentiability enters.

The Douglas factorization in Lemma 2.4 has the correct orientation. From (cT\le M_z), taking

[
S=\sqrt c,T^{1/2},
\qquad
T_0=M_z^{1/2}
]

gives (SS^*\le T_0T_0^*), hence (S=T_0C_z). The truncations (h_n(s)=\min(n,s^{-1})), with (h_n(0)=n), satisfy (s h_n(s)\le1). No measurable selection of the contractions (C_z) is required. The scalar kernels are jointly Borel, and every Tonelli or monotone-convergence invocation is on nonnegative measurable functions.

The Minty map (U(z)=z+p(z)) is injective, and (W(z)=z-p(z)) is (1)-Lipschitz as a function of (U(z)). The grid covering estimate is therefore (O(r^{-d})). Cauchy–Schwarz gives the required lower bound on close-pair mass, and the layer-cake integral diverges exactly at the inverse-square exponent for (d=1,2).

The interval reconstruction is correct after adding the singleton case. Endpoint exposure is valid. Localization reconstructs compact subsets of the interior in both operator orders. The two positivity implications used to remove cross terms are correct:

[
0\le T\le I,\quad RTR=R\quad\Longrightarrow\quad TR=R,
]

and

[
0\le T,\quad RTR=0\quad\Longrightarrow\quad TR=0.
]

Regularity and polarization then pass from compact subsets to all Borel sets.

The planar boundary stratification is valid: each nonextreme boundary point belongs to the relative interior of a maximal exposed segment; those interiors are pairwise disjoint and relatively open; second countability makes the family countable; and the endpoints lie in the extreme set.

The representing-kernel construction is valid. The extreme set is compact in the planar situation used, the barycenter relation has nonempty compact fibers, and a Borel selector exists. An extreme point can only be represented by its point mass. Evaluation (\nu\mapsto\nu(S)) is Borel for Borel (S), so the boundaryized POVM is well-defined and the bounded-Borel Fubini step is legitimate.

Scherer’s Theorem 3.8 states the exact planar affine hyperrigidity theorem needed by Lemma 3.4. The manuscript is entitled to apply it to arbitrary, potentially diffuse, PVMs on the extreme boundary. ([[arXiv](https://arxiv.org/pdf/2411.11709)][1]) Strict Jensen equality identifies precisely the extreme-supported portion after boundaryization. The open interiors of the flat boundary segments exclude their endpoints, so there is no double counting between flat pieces and the extreme stratum.

After reconstruction of the interior, every flat segment, and the extreme block, diagonal equality on each stratum combines with positivity to annihilate all cross terms. Strong joins of the corresponding projections then recover the full POVM. The compact-to-Borel passage is valid.

The compression corollary is correct. Affine separation shows automatically that the compressed joint spectrum lies in (K). Equality of the measures yields equality of the second coordinate moments. For each self-adjoint coordinate operator,

[
PT_j^2P-(PT_jP)^2
=================

# PT_j(I-P)T_jP

\bigl((I-P)T_jP\bigr)^*\bigl((I-P)T_jP\bigr),
]

so equality forces ((I-P)T_jP=0); self-adjointness gives the opposite off-diagonal block. No finite-dimensional or finite-rank assumption is used.

The cited Douglas theorem supports precisely the factorization orientation used. ([[CiNii Research](https://cir.nii.ac.jp/crid/1362544419004860544)][3]) Brown supports the one-dimensional compression context after a Naimark dilation, and Shankar supports the quadratic normal-generator special case. ([[arXiv](https://arxiv.org/pdf/1410.6800)][4]) Pietrzycki–Stochel supports explicit integer monomial systems, including appropriate even radial powers, but not the manuscript’s unqualified wording about arbitrary “radial power” systems. ([[arXiv](https://arxiv.org/pdf/2405.20814)][5]) Davidson–Kennedy supports the relevant unique-extension/hyperrigidity framework; separability of (C(K)) is automatic here. ([[arXiv](https://arxiv.org/pdf/1608.02334)][6])

## Final determinations

### A. Main POVM/PVM theorem

**PASS — high confidence, conditional on the correctness of Scherer’s externally supplied proof.**

The exact theorem stated in Theorem 1.1 follows under exactly the stated hypotheses. The only defects found concern unused omitted cases in auxiliary lemmas.

### B. Square compressed-functional-calculus corollary

**PASS — high confidence.**

The positive-contraction hypotheses place the relevant joint spectra in ([0,1]^2), and the general compression result applies. Equality for one continuous strictly convex function forces the compression projection to commute with both operators.

### C. Hyperrigidity corollary

**PASS — high confidence.**

The theorem supplies the unique-extension property for every representation; (S_g) generates (C(K)); and the standard equivalence applies. There is no hidden Hilbert-space separability assumption.

### D. Strongest theorem actually established

Assuming Scherer’s Theorem 3.8:

> For every compact convex (K) of affine dimension at most two, every continuous strictly convex (g:K\to\mathbb R), every normalized POVM (E), and every PVM (F) on the same arbitrary Hilbert space, equality of all affine moments and the (g)-moment forces (E=F).

Equivalently, (S_g) is hyperrigid in (C(K)). Equivalently in the general Naimark-compression formulation, equality of the compressed (g)-functional calculus for a commuting compressed self-adjoint tuple forces the compression subspace to reduce the entire tuple.

The proof does not establish the corresponding statement in affine dimension three, for merely convex non-strict (g), for noncompact (K), or for a noncommuting compressed tuple.

Without Scherer, the manuscript internally establishes the interval theorem and the interior and flat-face reconstruction in the planar case. In particular, it proves the planar result when the comparison PVM assigns zero mass to the extreme stratum.

### E. Remaining unverified external dependencies

1. Scherer’s exact statement and hypotheses were verified, but his entire proof was not independently re-refereed. This is the sole nonstandard, load-bearing external dependency.
2. Douglas factorization is standard and correctly applied but not reproved.
3. Operator-valued Riesz representation and uniqueness are standard but uncited.
4. The unique-extension/hyperrigidity equivalence is externally supplied; its applicability here is verified.
5. Naimark dilation is required only for the reverse equivalence with the general compression formulation and for the Brown comparison.
6. Standard probability-kernel measurability and bounded-Borel Fubini facts are used correctly but should be cited.

### F. Release recommendation

**The manuscript requires repairs before responsible release. It should not be withdrawn.**

Mandatory revisions are:

1. repair Lemma 2.3;
2. repair Lemma 2.6;
3. expand the Scherer-to-POVM translation;
4. state the boundaryization Fubini argument explicitly;
5. state Stone–Weierstrass generation and automatic separability;
6. restrict the “no separability” claim to the Hilbert space;
7. narrow the Pietrzycki–Stochel description;
8. discuss Scherer’s 2026 spectrahedra result;
9. remove or substantiate the assertions about AI audits, repository provenance, and cryptographic records;
10. add ordinary author, date, and repository metadata.

After those changes, the manuscript can responsibly be circulated as a proof, subject to specialist review of the Scherer dependency and independent verification of novelty.

[1]: https://arxiv.org/pdf/2411.11709 "https://arxiv.org/pdf/2411.11709"
[2]: https://arxiv.org/abs/2601.16075 "https://arxiv.org/abs/2601.16075"
[3]: https://cir.nii.ac.jp/crid/1362544419004860544 "https://cir.nii.ac.jp/crid/1362544419004860544"
[4]: https://arxiv.org/pdf/1410.6800 "https://arxiv.org/pdf/1410.6800"
[5]: https://arxiv.org/pdf/2405.20814 "https://arxiv.org/pdf/2405.20814"
[6]: https://arxiv.org/pdf/1608.02334 "https://arxiv.org/pdf/1608.02334"
