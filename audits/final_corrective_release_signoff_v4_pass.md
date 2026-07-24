# Final corrective release-signoff audit

## Audit identity and mechanical baseline

| Item                           | Result                                                             |
| ------------------------------ | ------------------------------------------------------------------ |
| Attached TeX SHA-256           | `1902dc564a0a2fc09cd6a04fa6d56943deae15453b79d9841a3998b462426014` |
| Expected TeX SHA-256           | Exact match                                                        |
| v4 ZIP SHA-256                 | `473c8331c57a20431aade7cb54d0048b9bc7db4f7c3cda18a52edef3e471db66` |
| Extracted top-level directory  | `final_release_evidence_v4/`                                       |
| Exact verification command     | `bash VERIFY_BUNDLE.sh`                                            |
| Exit status                    | `0`                                                                |
| Final output line              | `release-bundle: PASS`                                             |
| Attached versus bundled TeX    | Byte-for-byte identical                                            |
| CI-artifact versus bundled PDF | Byte-for-byte identical                                            |

The prior reports were treated only as preserved historical records. The category findings below are based on the current attached TeX, the extracted v4 tree, independently rerun scripts, direct file comparisons, and fresh external-source checks.

## Category verdicts

| Category                                       | Verdict  | Confidence                                                                      |
| ---------------------------------------------- | -------- | ------------------------------------------------------------------------------- |
| 1. Mathematics                                 | **PASS** | High                                                                            |
| 2. Literature and scope                        | **PASS** | High; negative-search exhaustiveness is moderate-high and is properly qualified |
| 3. Provenance, authorship, and disclosure      | **PASS** | High                                                                            |
| 4. Reproducibility and bundle self-containment | **PASS** | High                                                                            |
| 5. Formalization boundary                      | **PASS** | High                                                                            |
| 6. Release readiness and public-claim scope    | **PASS** | High                                                                            |

---

## 1. MATHEMATICS — PASS

**Confidence: High**

### Evidence actually checked

I checked the complete 785-line current TeX, including every numbered theorem, lemma, corollary, and remark:

* Main POVM/PVM theorem: `paper/planar_strict_convex_hyperrigidity.tex`, lines 69–80.
* Square compression corollary: lines 90–102.
* Compact-fiber selection: lines 172–204.
* Bounded Borel subgradient selector: lines 206–230.
* Critical reciprocal-energy lemma: lines 244–300.
* Common-domain localization: lines 306–354.
* Affine exposure: lines 356–371.
* Interval reconstruction: lines 373–410.
* Planar boundary stratification: lines 417–444.
* Measurable extreme representation: lines 448–483.
* Scherer theorem and POVM/PVM translation: lines 506–525.
* Extreme-supported reconstruction: lines 527–562.
* Main planar proof: lines 566–624.
* Numbered dimension-three warning: lines 626–630.
* General tuple compression corollary: lines 634–675.
* Hyperrigidity corollary: lines 679–696.

### Scope of the main theorem

The statement has exactly the advertised scope:

* (K) is compact and convex.
* (\dim\operatorname{aff}K\leq2).
* (E) is a normalized POVM.
* (F) is a PVM on the same Hilbert space.
* (g\colon K\to\mathbb R) is continuous and strictly convex.
* Equality of all affine moments and the (g)-moment implies (E=F).

No hidden smoothness, strong-convexity, polygonality, finite-rank, separability, or atomicity assumption enters the proof.

### Selection and measurability

The compact-fiber selection proof is valid. For a closed relation with compact nonempty fibers, the distance-to-fiber functions are lower semicontinuous, hence Borel; the first-index construction produces Borel approximants with summable successive distances; their limit is a Borel selector in the closed fiber.

For compact (C\subset\operatorname{ri}K), relative subgradients are nonempty. Compact containment in the relative interior gives a uniform ball and hence a uniform subgradient bound. The full subgradient graph is closed and bounded, therefore compact, so the selector lemma applies.

The supporting defect
[
D_z(t)=g(t)-g(z)-\langle p(z),t-z\rangle
]
is jointly Borel, nonnegative, and vanishes only at (t=z). Strict convexity justifies the latter assertion for every selected relative subgradient. Compactness gives the required uniform positive lower bound on disjoint compact sets.

The later extreme-point kernel (x\mapsto\nu_x) is likewise obtained from a closed compact-fiber relation in (K\times\mathcal P(\operatorname{ex}K)). Evaluation (\nu\mapsto\nu(S)) is Borel for Borel (S), so the boundaryized POVM is well-defined.

### Critical reciprocal-energy argument

The proof correctly handles all dimensions appearing in the theorem.

* The (d=0) case is explicit: a nonzero measure on the singleton support charges the zero denominator.
* For (d=1,2), subgradient monotonicity gives
  [
  D_z(t)\leq \tfrac12\lVert G(t)-G(z)\rVert^2.
  ]
* The Minty variables (U=z+p(z)) and (W=z-p(z)) satisfy
  [
  \lVert W(z)-W(t)\rVert\leq\lVert U(z)-U(t)\rVert,
  ]
  making (U) injective and controlling the graph metric by the (U)-metric.
* A grid partition of bounded (U(C)\subset\mathbb R^d), followed by Cauchy–Schwarz, yields the (r^d) lower mass bound.
* Layer cake reduces the reciprocal-square energy to
  [
  \int_0^{r_0}r^{d-3},dr,
  ]
  which diverges precisely for (d=1,2).

No continuity of the selected subgradient is assumed or needed.

### Operator localization

The operator inequalities and factorization orientation are correct:

[
cE(J)\leq\int D_z,dE=\int D_z,dF,
\qquad cT\leq M_z.
]

With (S=\sqrt c,T^{1/2}) and (T_{\mathrm D}=M_z^{1/2}), the inequality (SS^*\leq T_{\mathrm D}T_{\mathrm D}^*) gives

[
\sqrt c,T^{1/2}=M_z^{1/2}C_z
]

for a contraction (C_z). This is the correct Douglas-factorization direction.

The scalar measure
[
\mu(S)=\lVert F(S)T^{1/2}u\rVert^2
]
is nonzero and supported on (C). The truncated reciprocal functions satisfy (M_zh_n(M_z)\leq I), giving a uniform pointwise bound on the reciprocal-defect integral. The contractions (C_z) need not be selected measurably: only the resulting uniform numerical inequality is integrated in (z). Joint Borel measurability belongs to (D_z(t)), which is sufficient for Tonelli. The resulting finite double energy contradicts the preceding divergence lemma.

### Endpoint and boundary cases

The singleton interval case is explicitly handled before the nondegenerate interval argument.

Affine exposure correctly isolates interval endpoints and planar flat faces. Interior compact sets are reconstructed by applying localization in both orders. The implications

[
0\leq T\leq I,\quad RTR=R\Rightarrow TR=R,
\qquad RTR=0\Rightarrow TR=0
]

correctly remove all off-diagonal blocks.

For a planar compact convex set:

* Every nonextreme boundary point lies in the relative interior of a maximal exposed segment.
* Those relative interiors are pairwise disjoint and relatively open in the second-countable boundary, so there are at most countably many.
* Their endpoints are extreme.
* The complement is (\operatorname{ex}K), which is therefore closed and compact.

Every point of (K) has an extreme-point representing measure: boundary points use at most two extreme points, while an interior point is first split between two boundary points and hence uses at most four. A representing measure for an extreme point must be the corresponding point mass.

### Extreme-boundary reconstruction

The translation of Scherer’s theorem is exact: hyperrigidity of (A(K)) in (C(\operatorname{ex}K)) says that a UCP map induced by a POVM and a representation induced by a PVM, agreeing on affine functions, agree on all of (C(\operatorname{ex}K)).

For
[
\widetilde g(x)=\int_{\operatorname{ex}K}g(z),d\nu_x(z),
]
strict Jensen inequality gives (\widetilde g(x)>g(x)) off the extreme boundary and equality on it. The proof using two independent samples is valid for arbitrary non-Dirac probability measures, including diffuse measures. The zero positive-operator integral of (\widetilde g-g) forces the POVM to be supported on the extreme boundary, after which boundaryization is the identity.

### Assembly of the main proof

The interior, exposed-face interiors, and extreme boundary form a countable Borel partition. The compressed POVM and PVM agree on every diagonal stratum. For a Borel set (S), positivity gives

[
E(S)F(S\cap D_i)=F(S\cap D_i),\qquad
E(S)F(D_i\setminus S)=0.
]

Passing to the strong joins over the countable strata gives

[
E(S)F(S)=F(S),\qquad E(S)F(K\setminus S)=0,
]

and hence (E(S)=F(S)).

### Compression and hyperrigidity corollaries

The tuple corollary has the correct exact scope on (H=\operatorname{ran}P). The proof correctly establishes (\sigma(A)\subset K) by affine separation, applies the main theorem to the compressed joint spectral POVM and the joint PVM of (A), and then uses the second-moment identity

[
V^*T_j^2V-A_j^2
=\bigl((I-P)T_jV\bigr)^*\bigl((I-P)T_jV\bigr)
]

to obtain reduction. The square corollary is exactly the (m=2), (K=[0,1]^2) specialization.

The hyperrigidity corollary correctly uses the POVM–UCP correspondence, the unique-extension property supplied by the main theorem, point separation by affine functions, Stone–Weierstrass, and separability of (C(K)). No separability of the represented Hilbert space is introduced.

**Defects found: none.**

---

## 2. LITERATURE AND SCOPE — PASS

**Confidence: High for the accuracy of the descriptions and current publication status. Moderate-high for exhaustiveness of the negative search; the manuscript correctly does not convert that search into a priority claim.**

### Scherer publication metadata

The original arXiv record is `2411.11709`, submitted on 18 November 2024. Its abstract states the exact planar result used by the manuscript: for compact convex (K\subset\mathbb R^2), (A(K)) is hyperrigid in (C(\operatorname{ex}K)). ([[arXiv](https://arxiv.org/abs/2411.11709)][1])

A live ScienceDirect/Elsevier record independently confirms:

* *Journal of Functional Analysis*;
* volume 291;
* issue 10;
* article 111602;
* DOI `10.1016/j.jfa.2026.111602`;
* assigned cover date 15 November 2026;
* author Marcel Scherer. ([[ScienceDirect](https://www.sciencedirect.com/science/article/pii/S0022123626002661)][2])

The packet consistently describes 15 November 2026 as an **assigned cover date**, not as an already elapsed date. Continuing to cite the original 2024 arXiv version is bibliographically permissible and is not presented as the work’s current publication status.

### Brown, Davidson–Kennedy, Kleski, Shankar, and Pietrzycki–Stochel

Brown’s result is correctly limited to one self-adjoint variable. Its compression consequence states that equality for one continuous strictly convex function forces invariance of the compression subspace; through the interval coordinate and the standard dilation/POVM translation, this covers the affine-dimension-at-most-one case. ([[arXiv](https://arxiv.org/abs/1410.6800)][3])

Davidson–Kennedy are used structurally, not as a source of the proposed planar theorem. Their final result relates a variant of Choquet order to the unique-extension property and reduces the commutative hyperrigidity problem to comparison of two maximality orders; it does not itself supply the arbitrary planar strictly convex theorem. The packet’s warning that the earliest arXiv version claimed more than the final version is appropriate. ([[arXiv](https://arxiv.org/abs/1608.02334)][4])

Kleski’s paper concerns separable Type I (C^*)-algebras and proves a weaker form of the hyperrigidity conjecture. The bundle correctly treats it as a contextual or conditional rigidity criterion, not as a proof that one arbitrary planar strictly convex function gives the required boundary behavior. ([[arXiv](https://arxiv.org/abs/1310.7266)][5])

Shankar proves, in particular, that for normal (T), the set involving (T) and (TT^*) is hyperrigid. This supports the manuscript’s stated positive-definite-quadratic planar special case after an invertible real affine change of coordinates. ([[arXiv](https://arxiv.org/abs/1812.08574)][6])

The current Pietrzycki–Stochel work studies hyperrigidity of specified monomial sets in a single commutative generator. The packet correctly limits its relevance to special monomial/radial nonlinearities rather than arbitrary continuous strictly convex (g). ([[arXiv](https://arxiv.org/abs/2405.20814)][7])

### Graph-hull and spectrahedra scope

The manuscript’s graph-hull argument is correct:

[
L_g=\operatorname{conv}{(x,g(x)):x\in K},
\qquad \operatorname{ex}L_g=\Gamma_g,
]

and restriction identifies (A(L_g)) completely order isomorphically with (S_g). For nonaffine (g),

[
\dim\operatorname{aff}L_g
=\dim\operatorname{aff}K+1.
]

Thus a one-dimensional (K) produces a planar graph hull, while a genuinely planar (K) produces a three-dimensional graph hull. Scherer’s planar theorem therefore does not directly prove the proposed genuinely planar result.

Scherer’s spectrahedra theorem assumes that the convex set itself is a compact spectrahedron with closed extreme boundary. The manuscript correctly says that it applies to (L_g) when (L_g) has that additional spectrahedral structure; arbitrary graph hulls of continuous strictly convex functions need not have it. ([[arXiv](https://arxiv.org/abs/2601.16075)][8])

### Current-file publication-status sweep

The six specifically requested files were checked:

1. `formalization/aristotle_return_v1/RequestProject/Statements.lean`, line 19
   Now records the arXiv source and the JFA volume, article, and DOI.

2. `formalization/aristotle_return_v1/GAP_REPORT.md`, lines 171–176
   Says the theorem first appeared on arXiv in 2024 and now has the JFA publication record and assigned cover date.

3. `formalization/aristotle_return_v1/ARISTOTLE_SUMMARY.md`, line 20
   Distinguishes the original arXiv posting from the current JFA record.

4. `formalization/ARISTOTLE_SCOPE_CORRECTION.md`, lines 68–83
   Identifies the stale wording, documents the correction, and states that the manuscript may continue to cite the arXiv version.

5. `literature/PRIMARY_SOURCE_CHECK.md`, lines 17–32
   Records the JFA metadata and expressly prohibits an unqualified current description as unpublished.

6. `literature/SCHERER_PUBLICATION_STATUS.md`, lines 10–42
   Separates the 2024 preprint history from the current publisher record.

A full current-tree semantic search found no unqualified present-tense assertion that Scherer’s work or theorem is unpublished. Remaining occurrences of “unpublished” are confined to:

* preserved descriptions of the v3 defect;
* immutable historical audits or the immutable Aristotle archive;
* regression rules that reject recurrence of the defect;
* wording rules saying that the work must not be called unpublished;
* one generic, unrelated statement in a canonical source artifact disclaiming claims about “treatment in unpublished work.”

Those are historical, prohibitory, or unrelated uses and are not stale current publication-status claims.

### Negative-search and priority language

The current TeX says that two searches “located no prior theorem with that full scope” and immediately states that this is not a claim of historical priority. The supporting reports use language such as “appears,” “seems new,” and “negative search,” not “first proof,” “certified first,” or absolute priority. My fresh source check found no contrary exact-scope theorem, but this remains negative-search evidence rather than historical certification.

**Defects found: none.**

---

## 3. PROVENANCE, AUTHORSHIP, AND DISCLOSURE — PASS

**Confidence: High**

### Evidence actually checked

* TeX authorship and disclosure: lines 25–31 and 698–729.
* `AI_DISCLOSURE.md`, lines 3–62.
* `PROVENANCE.md`, including the path convention, source hashes, twelve-report audit table, Aristotle record, build record, and v3/v4 chronology.
* `CLAIMS_MATRIX.md`.
* `PUBLICATION_CHECKLIST.md`.
* Supporting chronology in `README.md` and `CORRECTIVE_REPAIRS.md`.

### Findings

`DannyExperiments` is consistently identified as the conventional manuscript author and human curator. GPT-5.6 Pro is credited for generation and repair of the ordinary proof, while Codex is credited for manuscript preparation, audit coordination, provenance tooling, and packaging.

The packet consistently describes all twelve preserved audit reports as AI-generated. It does not describe any AI session as a human referee, peer review, or specialist review.

The v3 failure is accurately recorded as a literature-consistency failure involving four stale descriptions in three current extracted-tree files. The v4 repair is accurately recorded as documentary only, with no change to the mathematical TeX or comment-stripped Lean code.

`PROVENANCE.md`, lines 3–8, explicitly defines paths as repository-relative unless marked bundle-local. Every backticked current document path resolves from the extracted root. References to the enclosing repository directory `release/` are explicitly identified as a nonembedded enclosing path, not as a missing current document.

The source, report, formalization, TeX, PDF, CI-log, and artifact hashes quoted in the provenance records agree with the actual bundled bytes.

`CLAIMS_MATRIX.md` and `PUBLICATION_CHECKLIST.md` consistently disclose:

* prior one-dimensional coverage;
* proposed genuinely planar scope;
* pending human specialist review;
* three remaining Lean `sorry` declarations;
* absence of complete Lean verification;
* absence of absolute historical-priority certification;
* the fact that fresh v4 signoff was pending when the evidence packet was frozen.

That last pending marker is an appropriate pre-signoff state, not an inconsistency.

**Defects found: none.**

---

## 4. REPRODUCIBILITY AND BUNDLE SELF-CONTAINMENT — PASS

**Confidence: High**

### Exact verifier run

From the extracted ZIP root, I ran exactly:

```bash
bash VERIFY_BUNDLE.sh
```

Result:

```text
exit status: 0
final line: release-bundle: PASS
```

The preceding final checks included:

```text
tex-sanity: PASS (17 labels, 12 referenced labels, 5 abstract sentences)
formalization-scope: PASS (archive preserved; Lean code unchanged; thm_main exact; operator surrogates disclosed; three sorries)
release-claims: PASS (15 numbered items; source paths resolve; preliminary searches present; Lean scope disclosed)
release-bundle: PASS
```

### ZIP structure and safety

Independent inspection of the outer ZIP found:

* 91 members;
* one top-level directory, `final_release_evidence_v4/`;
* successful CRC/integrity testing;
* no duplicate member names;
* no `..` traversal components;
* no absolute-path members;
* no symlink, device, or other link payloads.

### Checksum manifests

`ROOT_SHA256SUMS` contains 77 unique payload entries. Its coverage exactly equals every regular payload file in the extracted bundle except `ROOT_SHA256SUMS` itself. Every recorded hash verifies.

`SOURCE_MANIFEST.sha256` contains 22 unique entries. Every listed path exists and every hash verifies.

Direct `sha256sum -c` checks for both manifests exited successfully.

### Required contents

The bundle contains:

* `source/Artifact_A_square_polytope.md`;
* `source/Artifact_B_planar_compact_convex.md`;
* every audit listed in the manifests and provenance table, including
  `audits/final_corrective_release_signoff_audit_10.md`;
* `literature/preliminary_search_1.md`;
* `literature/preliminary_search_2.md`;
* `literature/final_deep_research_report.md`;
* `literature/final_pro_literature_report.md`;
* `literature/SCHERER_PUBLICATION_STATUS.md`;
* the immutable Aristotle archive;
* the documentary-corrected extracted Aristotle tree;
* the CI job log;
* the GitHub Actions workflow;
* all verification and build scripts;
* the CI artifact ZIP;
* the separately bundled PDF;
* the complete `AUDITED_TO_REVISED_TEX.patch`;
* the current manuscript TeX.

There are no legacy relocated `sources/` or `audit_inputs/` directories.

### Byte identities and patch completeness

* Attached TeX and `paper/planar_strict_convex_hyperrigidity.tex` are byte-identical.
* Their common SHA-256 is the required
  `1902dc564a0a2fc09cd6a04fa6d56943deae15453b79d9841a3998b462426014`.
* The CI artifact ZIP contains exactly one PDF.
* That PDF and `build/planar_strict_convex_hyperrigidity.pdf` are byte-identical.
* Their SHA-256 is
  `27ffab5e1a5d3ab99f2bbe4f5b44d6c62b4d7d79aa8860627e1a73f5e2edadb1`.
* Applying `AUDITED_TO_REVISED_TEX.patch` to
  `audits/AUDITED_TEX_e5a8c072.tex` reconstructs the current TeX exactly.
* The patch changes documentary disclosure/provenance wording only; it changes no theorem, hypothesis, equation, proof step, or mathematical conclusion.

The supplied build record and CI log agree on commit, workflow, job, artifact, engine, and hashes. The final PDF is eight unencrypted A4 pages. Page rendering and inspection found no clipping, overlap, broken glyph, unresolved-reference marker, or bibliography-layout defect. Undefined-citation messages in the CI log occur during the initial LaTeX pass and are resolved by the completed multipass build.

**Defects found: none.**

---

## 5. FORMALIZATION BOUNDARY — PASS

**Confidence: High**

### Immutable archive and corrected tree

The immutable archive is:

```text
formalization/6f13344c-d5b5-4805-ab3d-e779ff868afb-aristotle.tar.gz
```

SHA-256:

```text
1887d86be11c597cfcbc604346b3efb55260cb3bbecbf69720443c5210b6bc1f
```

The archive itself has one safe top-level directory, no duplicate members, no traversal or absolute paths, and no link/device payloads.

The current extracted tree differs from the archive only in:

* comments in `RequestProject/Statements.lean`;
* `ARISTOTLE_SUMMARY.md`;
* `GAP_REPORT.md`.

`POVM.lean`, `Main.lean`, the Aristotle README, `lakefile.toml`, `lean-toolchain`, and `lake-manifest.json` remain byte-identical.

After correctly removing nested Lean comments, the Lean code in the current tree and immutable archive is byte-identical. Its common stripped-code SHA-256 is:

```text
55ef4809b6d00bb5655bf2446ce8446aca7d51a6ce41168ae930e8b3c3acc27f
```

The Scherer publication-status repair is therefore comment/documentation only.

### Foundational proof-escape scan

Independent scans of:

* `formalization/aristotle_return_v1/RequestProject/POVM.lean`;
* `formalization/aristotle_return_v1/RequestProject/Main.lean`

found no `sorry`, `admit`, unsafe declaration, new mathematical axiom, new opaque constant used as an escape, `implemented_by`, or equivalent disclosed proof bypass.

The archive’s own axiom report uses only ordinary Lean foundations such as `propext`, `Classical.choice`, and quotient soundness; these are not hidden theorem assumptions or proof escapes.

### Exact headline declarations

The current declaration coordinates recorded in `declarations/LEAN_DECLARATION_SCAN.md` are accurate:

```text
56: theorem thm_main
65:   sorry

112: theorem cor_tuple
128:   sorry

145: theorem cor_square
160:   sorry
```

These are exactly three standalone `sorry` proofs.

`thm_main` matches the manuscript theorem semantically:

* arbitrary Hilbert space;
* compact convex (K);
* affine dimension at most two via the vector-span finrank;
* normalized POVM and PVM;
* continuous strictly convex (g);
* agreement on all affine functions and on (g);
* equality on all Borel sets.

The use of ambient affine maps and an ambient representative (g\colon V\to\mathbb R) with `ContinuousOn` and `StrictConvexOn` is equivalent to the manuscript’s restriction-to-(K) formulation.

`cor_tuple` and `cor_square` are not exact formalizations of the manuscript corollaries. Their compressed operators and unital joint functional calculus live on the full ambient Hilbert space rather than on (H=\operatorname{ran}P). This imposes an additional complement condition and makes them stronger ambient-space surrogates. That distinction is stated accurately in:

* `RequestProject/Statements.lean`, lines 67–77, 101–111, and 134–144;
* `formalization/ARISTOTLE_SCOPE_CORRECTION.md`, lines 27–59;
* `declarations/LEAN_DECLARATION_SCAN.md`, lines 26–48;
* `formalization/aristotle_return_v1/ARISTOTLE_SUMMARY.md`, lines 14–28;
* `formalization/aristotle_return_v1/GAP_REPORT.md`, lines 178–187.

The hyperrigidity corollary is discussed but not stated in Lean because the relevant operator-system/UCP infrastructure is absent.

The supplied Aristotle project reports a successful build under Lean/mathlib v4.28.0. I independently verified the source and declaration boundaries, but did not treat that supplied build record as an independent clean-checkout replay. The packet itself accurately leaves such a replay pending.

No main theorem, tuple corollary, square corollary, or hyperrigidity corollary is represented as Lean-verified.

**Defects found: none.**

---

## 6. RELEASE READINESS AND PUBLIC-CLAIM SCOPE — PASS

**Confidence: High**

### Evidence actually checked

I swept the TeX, README, disclosure, claims matrix, publication checklist, provenance record, bundle manifest, corrective-repair record, formalization status documents, and all current literature-status documents for headline and implied claims.

### Findings

The packet presents:

* an ordinary proposed proof;
* generated and audited with AI;
* curated under the conventional manuscript authorship of DannyExperiments;
* restricted to compact convex sets of affine dimension at most two;
* with a normalized POVM, a PVM, and one continuous strictly convex function;
* accompanied by reproducibility, literature, and partial-formalization evidence.

It does **not** claim:

* an unrestricted affine-dimension-three theorem;
* that the inverse-square argument works in unrestricted dimension three;
* human peer review or specialist approval;
* complete Lean verification;
* exact Lean formalization of the two operator corollaries;
* absolute historical priority;
* a certified first proof.

The numbered remark at TeX lines 626–630 expressly excludes the unrestricted affine-dimension-three inference.

The TeX verification section, `AI_DISCLOSURE.md`, `CLAIMS_MATRIX.md`, `PUBLICATION_CHECKLIST.md`, and the formalization records expressly disclose that human specialist review, independent Lean replay, and completed Lean proofs remain absent. Those are stated limitations of the release, not contradictions or hidden defects.

The qualified literature language is compatible with release: it reports what the preserved searches did and explicitly declines to certify historical priority.

**Defects found: none.**

OVERALL PASS

[1]: https://arxiv.org/abs/2411.11709 "https://arxiv.org/abs/2411.11709"
[2]: https://www.sciencedirect.com/science/article/pii/S0022123626002661 "https://www.sciencedirect.com/science/article/pii/S0022123626002661"
[3]: https://arxiv.org/abs/1410.6800 "https://arxiv.org/abs/1410.6800"
[4]: https://arxiv.org/abs/1608.02334 "https://arxiv.org/abs/1608.02334"
[5]: https://arxiv.org/abs/1310.7266 "https://arxiv.org/abs/1310.7266"
[6]: https://arxiv.org/abs/1812.08574 "https://arxiv.org/abs/1812.08574"
[7]: https://arxiv.org/abs/2405.20814 "https://arxiv.org/abs/2405.20814"
[8]: https://arxiv.org/abs/2601.16075 "https://arxiv.org/abs/2601.16075"
