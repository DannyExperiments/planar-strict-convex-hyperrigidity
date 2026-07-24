# Final hostile-referee report

Materials audited:

* [Current TeX source](sandbox:/mnt/data/planar_strict_convex_hyperrigidity%283%29.tex)
* [Final release audit packet](sandbox:/mnt/data/FINAL_RELEASE_AUDIT_PACKET.md)
* [Independent local PDF build](sandbox:/mnt/data/_hostile_audit_build/manuscript.pdf)

The packet correctly warns that it is not a mathematical argument and that earlier audits, builds, and Aristotle output cannot establish correctness. I followed that instruction. 

## Verdict matrix

| Category                                                   | Verdict                                   | Confidence |
| ---------------------------------------------------------- | ----------------------------------------- | ---------- |
| 1. Mathematics                                             | **PASS**                                  | High       |
| 2. Literature and scope language                           | **PASS**                                  | Moderate   |
| 3. Verification, provenance, authorship, and AI disclosure | **REPAIRABLE**                            | High       |
| 4. Compilation and private-release readiness               | **REPAIRABLE**                            | High       |
| **Overall**                                                | **OVERALL REPAIRABLE — NOT OVERALL PASS** | High       |

No mathematical result received REPAIRABLE or FAIL. The refusal of OVERALL PASS is documentary and release-evidence based.

---

# 1. Mathematics — PASS

The source contains fourteen numbered theorem/lemma/corollary statements. Because the `remark` environment shares the theorem counter, it also contains numbered **Remark 4.1**. I audited that remark separately.

## 1. Theorem 1.1 — PASS

**Statement:** normalized POVM/PVM uniqueness on a compact convex (K) with (\dim\operatorname{aff}K\le 2), from agreement on all affine functions and one continuous strictly convex (g).

**Lines:** statement 69–80; proof 566–624.

The proof closes all three affine-dimension cases:

* Dimension zero is genuinely immediate.
* Dimension one is reduced to Lemma 2.6.
* Dimension two is reconstructed on the mutually disjoint strata
  [
  K^\circ,\qquad \operatorname{ex}K,\qquad U_n=\operatorname{ri}L_n.
  ]

The interior argument correctly applies localization in both orders. For compact (C\subset K^\circ), it obtains
[
QE_0(C)Q=Q,\qquad Q'E_0(C)Q'=0,
]
and positivity of the contraction (E_0(C)) eliminates both off-diagonal blocks. Regularity and polarization then give equality on all interior Borel sets. The implicit final step is valid: equality on (K^\circ), together with (E_0(K)=F_0(K)=R_0), forces (E_0(K\setminus K^\circ)=0).

Flat faces are first isolated by affine exposure, then reduced to the interval theorem. The extreme stratum is handled by Lemma 3.4.

The final cross-term elimination is correct. From
[
Q_iTQ_i=Q_i,\qquad P_iTP_i=0,\qquad 0\le T\le I,
]
one obtains (TQ_i=Q_i) and (TP_i=0). Countable strong joins are legitimate because the flat-face family is countable. Hence
[
TF(S)=F(S),\qquad TF(K\setminus S)=0,
]
and therefore (T=F(S)).

No finite-rank, atomicity, or acting-Hilbert-space separability assumption is used.

## 2. Corollary 1.2 — PASS

**Lines:** 90–102; derivation at 677 from Corollary 5.1.

This is exactly Corollary 5.1 with (m=2) and (K=[0,1]^2). Commuting positive contractions have joint spectrum in the square, and the assumption that the compressions (A,B) commute supplies their joint functional calculus.

## 3. Lemma 2.1, compact-fiber selection — PASS

**Lines:** 172–204.

The distance functions
[
d_j(x)=\operatorname{dist}(q_j,\mathcal R_x)
]
are correctly shown lower semicontinuous using compactness and closedness of the graph. The successive first-index choices are Borel, their increments are summable, and the pointwise limit lies in the closed fiber.

This is a self-contained measurable-selection proof; no unquoted selection theorem is being smuggled in.

## 4. Lemma 2.2, bounded Borel subgradient selector — PASS

**Lines:** 206–230.

At (z\in\operatorname{ri}K), a support to the relative epigraph cannot have zero vertical component: otherwise its horizontal component would support (K) at a relative-interior point and hence be zero. Division gives a relative subgradient.

Compactness of (C\subset\operatorname{ri}K) supplies a common relative ball. Applying the subgradient inequality at (z\pm ru) gives the claimed uniform bound. The graph is closed and bounded, hence compact, and Lemma 2.1 applies.

The later uniform separation
[
D_z(t)\ge c\qquad(z\in C,\ t\in J)
]
is also valid despite the selector being merely Borel: the minimum is taken over the full compact subgradient graph, not over a purportedly continuous selected graph.

## 5. Lemma 2.3, critical reciprocal energy — PASS

**Lines:** 244–300.

The formerly dangerous zero-dimensional case is explicitly handled.

For (d=1,2), the proof correctly uses

[
D_z(t)\le \frac12|G(t)-G(z)|^2,
\qquad G(z)=(z,p(z)).
]

With Minty variables
[
U=z+p(z),\qquad W=z-p(z),
]
monotonicity gives
[
|W(z)-W(t)|\le |U(z)-U(t)|.
]
Thus (U) is injective and
[
|G(z)-G(t)|\le|U(z)-U(t)|.
]

Partitioning the bounded set (U(C)\subset\mathbb R^d) into (O(r^{-d})) cubes and applying Cauchy–Schwarz gives the required pair-mass estimate. The layer-cake integral is
[
2\int_0^{r_0}r^{d-3},dr,
]
which diverges exactly for (d\le2).

No continuity of the selected subgradient is assumed or needed.

## 6. Lemma 2.4, common-domain localization — PASS

**Lines:** 306–354.

This is the most delicate internal lemma. Its operator orientation is correct.

From separation,
[
cT\le M_z.
]
Douglas factorization is applied as
[
\sqrt c,T^{1/2}=M_z^{1/2}C_z.
]
Choosing (u) with (\eta=T^{1/2}u\ne0) produces a single nonzero measure
[
\mu(S)=|F(S)\eta|^2
]
supported on (C), independent of (z).

For
[
h_n(s)=\min{n,s^{-1}},\quad h_n(0)=n,
]
functional calculus gives
[
\int_C h_n(D_z(t)),d\mu(t)
=\frac1c\langle M_zh_n(M_z)v_z,v_z\rangle
\le\frac1c|u|^2,
]
because (s h_n(s)\le1).

The contractions (C_z) and vectors (v_z) need not be selected measurably: they are used only to obtain a pointwise bound uniform in (z). The kernel (D_z(t)^{-1}) is jointly Borel because (p) is Borel. Tonelli then contradicts Lemma 2.3.

The measurable-selection and operator-factorization interfaces are sound.

## 7. Lemma 2.5, affine exposure — PASS

**Lines:** 356–371.

The inequality
[
1_{{r\ge1/n}}\le nr
]
correctly transfers to POVM integrals. Compression by (F(L)), where (r=0), annihilates the right side. Strong monotone convergence gives the result on (K\setminus L).

## 8. Lemma 2.6, interval reconstruction — PASS

**Lines:** 373–410.

The singleton case is explicitly present.

For a nondegenerate interval:

* The endpoints are exposed by (t-a) and (b-t).
* A compact interior set (C) is localized against (I\setminus C).
* Reverse-order localization eliminates the compression on the rest of the open interval.
* Endpoint exposure eliminates the remaining diagonal blocks.
* Positivity removes the corresponding cross terms.
* Regularity and polarization extend equality from compact interior subsets to all Borel subsets.

The endpoint reconstruction is complete; it does not assume the spectral measure is atomic at the endpoints.

## 9. Lemma 3.1, boundary stratification — PASS

**Lines:** 417–444.

Every nonextreme planar boundary point lies in the relative interior of a proper exposed face, hence a line segment. The relative interiors of maximal boundary segments are pairwise disjoint and relatively open in the second-countable boundary, so there are at most countably many.

Their endpoints are extreme, and
[
\operatorname{ex}K
=\partial K\setminus\bigcup_n\operatorname{ri}L_n
]
is closed. Thus (\operatorname{ex}K) is compact.

This handles polygons, mixed curved/flat boundaries, infinitely many accumulating flat faces, and the fully strictly convex case.

## 10. Lemma 3.2, measurable extreme representation — PASS

**Lines:** 448–483.

Boundary points are convex combinations of at most two extreme points. Intersecting a line through an interior point with (K) reduces an interior point to at most four extreme points. Hence every barycenter fiber is nonempty.

Because (Z=\operatorname{ex}K) is compact metric, (\mathcal P(Z)) is compact metric and the barycenter relation is closed. Lemma 2.1 therefore supplies the Borel kernel (x\mapsto\nu_x).

For (z\in Z), any representing probability measure must be (\delta_z). The proof using a nonconstant linear functional and a two-piece barycentric decomposition is valid.

## 11. Theorem 3.3, Scherer — PASS

**Lines:** 506–525.

The cited theorem is accurately stated. Scherer’s Theorem 3.8 says that for compact convex (K\subset\mathbb R^2), (A(K)) is hyperrigid in (C(\operatorname{ex}K)). His formulation explicitly uses an arbitrary Hilbert space, a representation, and a UCP map agreeing on (A(K)). 

The manuscript’s conversion to the POVM/PVM statement is correct:

1. A PVM gives a representation.
2. A normalized POVM gives a UCP map.
3. Agreement of affine moments is agreement on (A(K)).
4. Hyperrigidity gives equality of maps.
5. Scalar regular-measure uniqueness and polarization give equality of the operator measures.

## 12. Lemma 3.4, extreme-supported reconstruction — PASS

**Lines:** 527–562.

Boundaryization preserves affine moments, so Scherer’s theorem gives
[
\widehat G=N.
]

The strict Jensen step is valid for an arbitrary, possibly diffuse, representing probability measure. If (S,T) are independent with a non-point law (\nu), then (\mathbb P(S\ne T)>0), and
[
g!\left(\int z,d\nu\right)
\le \mathbb E,g!\left(\frac{S+T}{2}\right)
<\mathbb E,g(S).
]

Thus the zero set of (\widetilde g-g) is exactly (Z). The Borelness of (\widetilde g), although not stated in a separate sentence, follows directly because
[
x\longmapsto\nu_x
]
is Borel and
[
\nu\longmapsto\int g,d\nu
]
is continuous in the weak topology.

Positivity of
[
\int(\widetilde g-g),dG=0
]
then forces (G(K\setminus Z)=0), after which boundaryization is the identity.

## 13. Corollary 5.1, tuple compression — PASS

**Lines:** 634–675.

The proof first establishes
[
\sigma(A_1,\dots,A_m)\subset K
]
by affine separation. This is the required justification for applying (g) to the compressed tuple.

Equality of the compressed POVM and the joint spectral PVM gives all continuous moments, in particular
[
V^*T_j^2V=A_j^2.
]
Therefore
[
V^*T_j(I-P)T_jV
=((I-P)T_jV)^*((I-P)T_jV)=0,
]
which eliminates the off-diagonal block. Self-adjointness eliminates its adjoint.

## 14. Corollary 5.2, hyperrigidity — PASS

**Lines:** 679–696.

The POVM/UCP and PVM/representation correspondences are correct. The affine functions and (g) generate (C(K)), since the affine functions already contain constants and separate points.

The no-separability-on-the-acting-Hilbert-space claim is also properly supported. Pietrzycki–Stochel’s Appendix A gives the regular spectral/semispectral measure correspondences, and Appendix B states the unique-extension characterization for arbitrary Hilbert spaces; separability of (C(K)) removes the remaining sequential qualification. ([[arXiv](https://arxiv.org/html/2405.20814v4)][1])

## Numbered Remark 4.1 — PASS

**Lines:** 626–630.

The remark accurately limits the proof. The reciprocal-energy integral becomes
[
\int_0^{r_0}r^{d-3},dr,
]
which does not diverge for (d\ge3). The manuscript therefore does not claim the unrestricted affine-dimension-three result.

### Cross-cutting mathematical checks

**Probability kernel and Fubini:** PASS. For Borel (S\subset Z), (x\mapsto\nu_x(S)) is Borel. Positive scalarizations are finite regular measures; bounded-kernel Fubini is first used on positive diagonal scalarizations and then extended by polarization. Countable additivity follows by scalar monotone convergence.

**Diffuse cases:** PASS. No proof step diagonalizes the PVM into atoms or sums over spectral points. The curved extreme boundary may carry diffuse spectral mass.

**Nonseparable acting Hilbert spaces:** PASS. The arguments use scalarizations, WOT countable additivity, positivity, and countable strong joins. No countable basis of the acting space is introduced.

**Boundary reconstruction:** PASS. Flat faces, curved extreme boundary, and interior mass are reconstructed separately, and the final positivity argument removes all cross terms.

**Compression:** PASS. The joint-spectrum containment is proved rather than assumed, and the second-moment identity correctly gives reducing subspaces.

---

# 2. Literature and scope language — PASS

The literature descriptions are materially accurate.

Brown’s Theorem 2.1 treats arbitrary Hilbert spaces and continuous strictly convex functions on intervals; his compression corollary gives the one-variable reducing-subspace result. Thus the statement that the affine-dimension-one case is already covered is justified. ([[arXiv](https://arxiv.org/pdf/1410.6800)][2])

Shankar proves that for a normal generator (T), the set containing (T) and (TT^*) is hyperrigid. A positive-definite planar quadratic becomes (|z|^2), up to an invertible real affine coordinate change and addition of an affine function, so the cited quadratic special case is legitimate. 

Pietrzycki–Stochel explicitly study hyperrigid systems of monomials in a normal generator and its adjoint, so the manuscript’s deliberately nonspecific phrase “certain explicitly specified monomial systems” is accurate. ([[arXiv](https://arxiv.org/html/2405.20814v4)][1])

The graph-hull comparison is correct:

* Strict Jensen equality makes every graph point extreme.
* Compactness of the graph forces every extreme point of its convex hull to lie on the graph.
* Hence (\operatorname{ex}L_g=\Gamma_g).
* For a nonaffine (g), the affine dimension rises by one.

Scherer’s spectrahedra theorem assumes a compact spectrahedron with closed extreme-point set. Since (\operatorname{ex}L_g=\Gamma_g) is compact, its remaining direct hypothesis here is precisely that (L_g) be a spectrahedron. ([[arXiv](https://arxiv.org/abs/2601.16075)][3])

My independent searches found the expected neighboring results—Brown, Scherer, Shankar, Pietrzycki–Stochel, and the spectrahedra theorem—but no exact prior theorem for arbitrary continuous strictly convex (g) on arbitrary planar compact convex (K), including arbitrary diffuse representations. This remains a negative-search conclusion, not a priority determination. The manuscript’s wording at lines 148–151 and 720–723 correctly makes that limitation explicit.

The Scherer planar theorem now also has a journal publication, but the arXiv citation remains a valid and exact source for Theorem 3.8; updating the bibliography to the journal version would be editorial rather than correctness-critical. ([[ScienceDirect](https://www.sciencedirect.com/science/article/pii/S0022123626002661?utm_source=chatgpt.com)][4])

---

# 3. Verification, provenance, authorship, and AI disclosure — REPAIRABLE

## Items that pass

The current pre-release status is clearly disclosed:

> “DannyExperiments curated the resulting private pre-release artifact.”

The authorship and AI roles in the TeX agree with the packet:

* DannyExperiments is the conventional author and curator.
* GPT-5.6 Pro generated the ordinary proof.
* Codex was used for manuscript preparation, audit coordination, and provenance tooling.

The paper does not represent any AI audit as human peer review and explicitly says specialist review remains pending.

The Aristotle wording correctly distinguishes a service-reported result from an independent replay:

> “The returned Aristotle feasibility project reports a successful build under Lean/mathlib v4.28.0.”

and

> “Independent replay of that project is pending.”

It also expressly disclaims formal verification:

> “Accordingly, this manuscript does not claim that its main theorem is formally verified.”

The packet reports exactly three headline `sorry` declarations—`thm_main`, `cor_tuple`, and `cor_square`—while distinguishing them from the foundational files. 

The added probability-kernel and POVM–UCP citations are present and relevant.

## Defect 3.1: the attached packet is not self-verifying

The packet says:

> “It records exact release evidence so that a final referee can verify the manuscript's documentary claims.”

That is false for the packet as supplied. Except for the TeX itself, the byte sequences corresponding to the listed hashes were not attached and were not available through the supplied file set. A hash string is an identifier, not evidence that can be verified without the identified bytes.

### Hash audit

| Claimed object                        | Claimed identifier/hash                                            | Independent result                             |
| ------------------------------------- | ------------------------------------------------------------------ | ---------------------------------------------- |
| Current TeX                           | `e5a8c072a8fc48b4c1df36e078e3395547677910442b42a48bfdb433e95123e9` | **VERIFIED EXACTLY**                           |
| `Artifact_A_square_polytope.md`       | `c43e287a90242e3f5948c34328adf54e9c4b60630dfe6a3ab5eff1f54a495b69` | **UNVERIFIABLE — bytes absent**                |
| `Artifact_B_planar_compact_convex.md` | `a0ebb8e7897760d789de3fe9b1d31611aaef310f88d41ffabb073da6d85c4728` | **UNVERIFIABLE — bytes absent**                |
| Repaired-manuscript audit             | `52cbcb253c3b33089f2c8285c95f29c3545749d8ce094f9522669728b8b15822` | **UNVERIFIABLE — file absent**                 |
| Deep literature report                | `16d085483ded93534c4598ba3b81336433b808c1a8ccbc3e29655a9c183a094e` | **UNVERIFIABLE — exact file absent**           |
| Pro literature report                 | `362aceeae65269e0423ae136a1dbc0b0929a1e7432434c18d7f56c8747e86025` | **UNVERIFIABLE — exact file absent**           |
| Aristotle archive                     | `1887d86be11c597cfcbc604346b3efb55260cb3bbecbf69720443c5210b6bc1f` | **UNVERIFIABLE — archive absent**              |
| Artifact ZIP                          | `058b91a5123366630a5442c4fd653ef796f31bae4f388808fdfd15c6072b8c88` | **UNVERIFIABLE — ZIP absent**                  |
| Claimed release PDF                   | `465709ab87602367fde8bc95c2a829d8d7d19f110a14ffffa0240f17749ec54f` | **UNVERIFIABLE — PDF absent**                  |
| Source commit                         | `4b2822bc33cfdea9a7408174d0be0e1b0c101d2e`                         | **UNAUTHENTICATED — repository object absent** |
| Actions run/artifact IDs              | `30062596744`, `8585105883`                                        | **UNAUTHENTICATED — private run unavailable**  |

The private repository returned no public content, which is consistent with it being private but prevents independent authentication of the repository objects.

### Smallest sound correction

Either:

1. attach an immutable release bundle containing every referenced file, the Lean tree, the Aristotle return, declaration-scan output, build logs, artifact ZIP, and exact PDF, together with a root `SHA256SUMS`; or
2. replace the quoted sentence with:

> “This packet records author-reported identifiers and hashes. Independent verification requires access to the referenced private repository and exact artifact bytes.”

The first correction is required if the packet is to continue calling itself verification evidence.

## Defect 3.2: “independent” audits are not established

The TeX says:

> “The ordinary proof underlying this manuscript was frozen before review and subjected to multiple independent AI-assisted hostile audits.”

The packet establishes only that six AI-generated reports are said to exist. It does not establish independence in any meaningful audit sense: different models, independent operators, sealed contexts, nonsharing of prior conclusions, or even the exact prompts cannot be checked.

### Smallest sound correction

Replace “independent” with:

> “separately run”

unless the release bundle documents the independence protocol.

## Defect 3.3: the audit chronology is compressed inaccurately

The TeX says:

> “A subsequent audit of the repaired manuscript passed all fourteen numbered mathematical results and classified the submission as repairable only because of release-metadata defects addressed in this version.”

The packet describes the defects more broadly as:

> “documentary, citation, provenance, and release-wording defects.”

Those are not all naturally described as “metadata.”

### Smallest sound correction

Replace the TeX sentence by:

> “A subsequent audit of the repaired manuscript passed all fourteen numbered theorem, lemma, and corollary statements but classified the submission overall as repairable because of documentary, citation, provenance, and release-wording defects addressed in this version.”

That wording also removes any possible confusion caused by numbered Remark 4.1.

---

# 4. Compilation and private-release readiness — REPAIRABLE

## Compilation itself — PASS

I performed a clean independent two-pass build of the attached TeX with `pdflatex -interaction=nonstopmode -halt-on-error`.

Independent result:

| Property                        | Result                                                             |
| ------------------------------- | ------------------------------------------------------------------ |
| Source SHA-256                  | `e5a8c072a8fc48b4c1df36e078e3395547677910442b42a48bfdb433e95123e9` |
| Engine                          | pdfTeX 1.40.26                                                     |
| Pages                           | 8                                                                  |
| Page size                       | A4                                                                 |
| Local PDF SHA-256               | `29dfa4054e6a9b9ec75c12e2ee8e17282ecd7185ebbd3f67e8cd82eddc9cb6f5` |
| Second-pass warnings            | None                                                               |
| Undefined references/citations  | None                                                               |
| Overfull/underfull box warnings | None                                                               |
| Fonts                           | Embedded                                                           |
| Encryption/forms/JavaScript     | None                                                               |
| Visual inspection               | No clipping, overlap, broken glyphs, or bibliography collision     |

The different local PDF hash does **not** contradict the packet’s claimed PDF hash. This build used a different pdfTeX version and embeds creation metadata. It is an independent source-build test, not a replay of the claimed CI artifact.

## Private-release package — REPAIRABLE

The source is ready for private circulation. The purported final evidence package is not ready for final documentary signoff because its central artifacts are absent.

There is also a public-release wording issue. The TeX currently says:

> “DannyExperiments curated the resulting private pre-release artifact.”

and describes the evidence as being preserved in a:

> “private pre-release repository.”

Those statements are accurate during private circulation. If the manuscript is publicly released unchanged as a final public artifact, the first description becomes stale and the second leaves public readers unable to inspect the cited evidence.

### Smallest sound correction before public release

* Change “private pre-release artifact” to “manuscript” or “preprint.”
* Publish or immutably archive the evidence bundle, or explicitly state that the evidence remains nonpublic and is not independently inspectable.
* Include the exact claimed release PDF and artifact ZIP, not merely their hashes.

---

# Overall verdict

## OVERALL REPAIRABLE — NOT OVERALL PASS

The ordinary mathematics passes this audit. The release does not pass as a fully verified evidence package because most provenance, audit, Lean, and build claims cannot be independently authenticated from the supplied materials, and two chronology phrases overstate what the packet establishes.

---

# What may and may not be claimed publicly if released unchanged

## May be claimed

The manuscript may state that:

* it presents an ordinary mathematical proof of Theorem 1.1 and its corollaries;
* this audit found no mathematical defect in any of the fourteen numbered results;
* the proof covers arbitrary continuous strictly convex (g), diffuse POVMs/PVMs, and arbitrary acting Hilbert spaces in affine dimension at most two;
* the work was generated with GPT-5.6 Pro under human direction and curated by DannyExperiments, with Codex used for preparation and provenance tooling;
* the work is not human peer reviewed and specialist review remains pending;
* an Aristotle service **reported** a successful Lean/mathlib v4.28.0 build;
* independent replay is pending;
* the exact main theorem and two operator corollaries are reported to remain `sorry`;
* two AI-assisted searches did not locate an earlier theorem of the full stated scope;
* no claim of historical priority is being made;
* the attached current TeX independently compiles to a clean eight-page A4 PDF.

## May not be claimed

The release may not claim that:

* the main theorem or either operator corollary is Lean-verified;
* the Aristotle project has been independently replayed;
* the formalization is sorry-free at the headline theorem level;
* the work has received human peer review or human specialist confirmation;
* the audit chronology, Lean declaration scan, Aristotle archive, source artifacts, literature reports, CI run, ZIP, or release-PDF hashes were independently verified by this referee;
* the packet is a self-contained reproducibility bundle;
* the exact claimed CI PDF was independently reproduced;
* the theorem is historically first;
* the method proves the unrestricted affine-dimension-three case;
* a publicly released artifact is still accurately described, without qualification, as a “private pre-release artifact.”

[1]: https://arxiv.org/html/2405.20814v4 "Hyperrigidity I: singly generated commutative ^∗-algebras"
[2]: https://arxiv.org/pdf/1410.6800 "arXiv:1410.6800v3  [math.FA]  18 May 2016"
[3]: https://arxiv.org/abs/2601.16075 "[2601.16075] The Hyperrigidity Conjecture for Spectrahedra"
[4]: https://www.sciencedirect.com/science/article/pii/S0022123626002661?utm_source=chatgpt.com "The Hyperrigidity Conjecture for compact convex sets in R2"
