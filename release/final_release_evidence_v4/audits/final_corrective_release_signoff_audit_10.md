# Final corrective release-signoff audit

**Audit date:** July 24, 2026
**Confidence:** High

The earlier audit reports were treated only as preserved historical artifacts. The results below come from independent inspection of the current TeX, extracted v3 bundle, manifests, scripts, PDF, Lean archive, documentary-corrected Lean tree, and current primary-source literature records.

## 1. Mathematics — PASS

I independently checked the entire mathematical argument in `paper/planar_strict_convex_hyperrigidity.tex`, including all fourteen numbered theorem, lemma, and corollary statements, the numbered remark, all hypotheses, endpoint cases, measurable-selection arguments, operator inequalities, and consequences.

The following load-bearing points are sound:

* The compact-fiber selection construction at lines 172–204 correctly proves lower semicontinuity of the fiber distances, Borel measurability of each first-index selection, pointwise Cauchy convergence, and membership of the limiting selector in the closed fiber.
* The subgradient selector at lines 206–230 correctly obtains nonempty subdifferentials in the relative interior, a uniform bound over compact subsets, compactness of the graph, and a bounded Borel selector.
* The Bregman defect and uniform separation at lines 232–242 correctly use strict convexity and compactness of the full subgradient graph.
* The critical reciprocal-energy lemma at lines 244–300 correctly handles affine dimension zero and proves divergence for dimensions one and two through monotonicity, Minty variables, the grid covering estimate, Cauchy–Schwarz, and layer cake/Tonelli.
* The localization proof at lines 306–354 uses the correct orientation of Douglas factorization. The functional-calculus identity involving (M_zh_n(M_z)), the contraction bound, monotone convergence, joint Borel measurability, and final Tonelli contradiction are valid. No measurability of the individually chosen Douglas contractions (C_z) is needed.
* Affine exposure at lines 356–371 correctly passes from the compact sets ({r\geq1/n}) to (K\setminus{r=0}) by strong monotone convergence.
* Interval reconstruction at lines 373–410 correctly treats the singleton interval, both endpoint exposures, both orders of interior localization, positivity-based elimination of cross terms, and extension from compact to arbitrary Borel subsets by regularity and polarization.
* Planar boundary stratification at lines 417–444 correctly identifies the nonextreme boundary as the disjoint union of relative interiors of at most countably many maximal exposed segments and proves compactness of (\operatorname{ex}K).
* The measurable extreme-point representation at lines 448–483 correctly establishes nonempty compact barycenter fibers, Borel selection, and uniqueness of the representing measure over an extreme point.
* The boundaryization construction at lines 485–504 has the required Borel kernel, weak-operator integral, countable additivity, normalization, Fubini identity, and polarization steps.
* The translation of Scherer’s theorem into the required POVM/PVM form at lines 506–525 is exact.
* Strict Jensen reconstruction at lines 527–562 correctly proves that equality occurs only for point masses and that the reconstructed POVM is supported on the extreme boundary.
* The main proof at lines 566–624 correctly reconstructs the interior, every flat-face stratum, and the extreme-point stratum, then eliminates every cross term using positivity and the strong joins of the spectral projections.
* The numbered remark at lines 626–630 accurately limits the method to affine dimension at most two.
* The tuple and square corollaries at lines 634–677 correctly establish spectral inclusion, apply the main theorem, and use the second-moment leakage identity to prove reduction.
* The hyperrigidity corollary at lines 679–696 correctly invokes the POVM–UCP correspondence, Stone–Weierstrass, and the unique-extension characterization.

The descriptions of the external mathematical results also have the required scope: Brown supplies the one-variable strict-convexity case; Shankar’s normal-generator result covers the quadratic-type special case; Pietrzycki–Stochel treat particular monomial systems in one normal generator; Scherer’s planar result concerns (A(K)\subset C(\operatorname{ex}K)); and Scherer’s spectrahedra theorem requires a compact spectrahedron with closed extreme boundary. ([arXiv][1])

## 2. Literature and scope — FAIL

The substantive scope analysis otherwise passes:

* The distinction between the previously known affine-dimension-at-most-one case and the proposed genuine planar case is correct.
* The graph-hull explanation correctly shows why a nonaffine (g) on a two-dimensional (K) produces a three-dimensional (L_g), so Scherer’s planar (A(L_g)) theorem does not directly settle the manuscript theorem.
* The Shankar, Pietrzycki–Stochel, Davidson–Kennedy, and spectrahedra comparisons are appropriately limited.
* The negative-search conclusion is repeatedly qualified as “no prior theorem located,” “apparently new,” or moderate-to-high confidence.
* No absolute historical-priority or “first proof” claim occurs.

There is, however, one current-status defect repeated in **four current, non-historical files**. These files unqualifiedly characterize Scherer’s planar paper or theorem as unpublished:

1. `formalization/aristotle_return_v1/RequestProject/Statements.lean:19`

   > `extreme-boundary rigidity theorem, itself an unpublished 2024 preprint).`

2. `formalization/aristotle_return_v1/GAP_REPORT.md:127`

   > `├─ Theorem 3.4  Scherer's planar extreme-boundary rigidity      [EXTERNAL, unpublished]`

3. `formalization/aristotle_return_v1/GAP_REPORT.md:171–173`, specifically line 172

   > `**unpublished 2024 arXiv preprint** (arXiv:2411.11709). Formalizing it is itself a`

4. `formalization/aristotle_return_v1/ARISTOTLE_SUMMARY.md:20`

   > `Scherer's unpublished 2024 planar theorem, used as a black box`

Those statements conflict with the bundle’s own current literature report:

* `literature/final_deep_research_report.md:68`

  > `Scherer, The Hyperrigidity Conjecture for compact convex sets in ℝ² (2024 preprint; later JFA 2026), Thm. 3.8.`

They are also no longer supportable as unqualified current publication-status descriptions. Elsevier currently identifies the work as a regular *Journal of Functional Analysis* article, volume 291, issue 10, article 111602, with DOI `10.1016/j.jfa.2026.111602`; the assigned issue date is November 15, 2026. The original arXiv version remains a 2024 preprint, but the current files do not say “the cited 2024 preprint version”—they categorically call the work or theorem unpublished. ([ScienceDirect][2])

This is not a failure of the disclosed negative literature search, nor an objection to citing the arXiv version in the TeX bibliography. It is a present factual and internal-consistency defect in the documentary-corrected tree.

## 3. Provenance, authorship, and disclosure — PASS

* The attached TeX and `paper/planar_strict_convex_hyperrigidity.tex` are byte-for-byte identical, with SHA-256:

  `1902dc564a0a2fc09cd6a04fa6d56943deae15453b79d9841a3998b462426014`

* The path convention at `PROVENANCE.md:5–8` is internally coherent: paths are repository-relative unless expressly bundle-local, and the enclosing repository’s `release/` directory is intentionally not recursively embedded.

* All **21 unique backticked document paths** in `PROVENANCE.md` resolve from the extracted bundle root. The absent `release/` reference is the expressly exempt enclosing directory, not a document path.

* Authorship and AI attribution agree across:

  * TeX lines 25–30;
  * `AI_DISCLOSURE.md:3–13`;
  * `PROVENANCE.md:203–208`.

* DannyExperiments is consistently identified as conventional manuscript author and human curator; GPT-5.6 Pro is credited for ordinary-proof generation and repair; Codex is credited for manuscript preparation, audit coordination, provenance, and repository work.

* AI audits are consistently distinguished from human review.

* The formalization limitations, exact-scope correction, three remaining `sorry` declarations, and pending independent replay are consistently disclosed.

The publication-status inconsistency identified above is assigned to Category 2; it does not alter the provenance or authorship chain.

## 4. Reproducibility and bundle self-containment — PASS

From the extracted ZIP root I ran exactly:

```text
bash VERIFY_BUNDLE.sh
```

No argument or environment-specific path was added.

* **Exit status:** `0`
* **Final line:** `release-bundle: PASS`

Independent checks also passed:

* ZIP structural integrity passed.

* The archive has one top-level directory, 75 files, 13 directory entries, and no duplicate member names, absolute paths, parent-directory traversal, or symbolic-link payload.

* ZIP SHA-256:

  `8b9607894636fa8817638162669f8738cb5d78def2d19a7fa0fbe22b5c2a5b0e`

* `ROOT_SHA256SUMS` has 74 unique entries and covers exactly all 74 payload files other than itself:

  * no omitted file;
  * no extra path;
  * no duplicate path;
  * no hash mismatch.

* `ROOT_SHA256SUMS` SHA-256:

  `f2397c9d8dac4f2a883f556a50ebc88469882a9b0739590ecd636a74c016d95f`

* `SOURCE_MANIFEST.sha256` contains 19 unique entries, and `sha256sum -c SOURCE_MANIFEST.sha256` succeeds for all 19:

  * 2 source artifacts;
  * 12 audit/audited-TeX artifacts;
  * 4 literature reports;
  * 1 immutable Aristotle archive.

* `SOURCE_MANIFEST.sha256` SHA-256:

  `1bcd5a5910059c07aba8ffa82b1eba896a4f0c646f2f21e5d205321515cd3cf5`

* Both source artifacts, all manifest-listed audits, both preliminary searches, both final literature reports, the CI log, workflow, verification and build scripts, artifact ZIP, extracted PDF, and documentary-only TeX patch are present.

* The artifact ZIP passes independent integrity testing:

  * `build/CI_ARTIFACT_8588800742.zip`
  * SHA-256 `28c695943def70a219cb01c323025136e0a9ed9ac50366c93e198056e2a5dc12`

* Its PDF is byte-for-byte identical to `build/planar_strict_convex_hyperrigidity.pdf`:

  * SHA-256 `27ffab5e1a5d3ab99f2bbe4f5b44d6c62b4d7d79aa8860627e1a73f5e2edadb1`

* The PDF is an unencrypted eight-page A4 document. All eight pages rendered cleanly at 200 dpi, with no clipping, overlap, missing glyphs, blank pages, or visual corruption.

* The current TeX compiled successfully in two independent local passes without warnings.

* `AUDITED_TO_REVISED_TEX.patch` applies cleanly to `audits/AUDITED_TEX_e5a8c072.tex` and produces the current TeX exactly. Its changes are documentary; it alters no theorem, hypothesis, equation, proof step, corollary, or numbered remark.

* Neither legacy relocated directory exists:

  * no `sources/`;
  * no `audit_inputs/`.

## 5. Formalization boundary — PASS

The immutable archive and documentary-corrected extracted tree satisfy all requested conditions.

* The immutable archive passes gzip and tar integrity checks and has the recorded SHA-256:

  `1887d86be11c597cfcbc604346b3efb55260cb3bbecbf69720443c5210b6bc1f`

* `RequestProject/Main.lean` and `RequestProject/POVM.lean` are byte-for-byte identical to the archive versions.

* Their lexical code contains no `sorry`, `admit`, `axiom`, new `constant`, `unsafe`, `sorryAx`, or implementation escape.

* `RequestProject/Statements.lean` contains exactly three standalone proof gaps:

  * `thm_main`: declaration line 56, `sorry` line 65;
  * `cor_tuple`: declaration line 112, `sorry` line 128;
  * `cor_square`: declaration line 145, `sorry` line 160.

* Comment-stripped Lean code in all three Lean files is identical to the immutable archive.

* Only documentary comments and the two Markdown reports identified in `formalization/ARISTOTLE_SCOPE_CORRECTION.md:15–25` differ.

* `thm_main` matches the manuscript theorem: arbitrary Hilbert space, compact convex (K) of affine dimension at most two, normalized POVM, PVM, continuous strictly convex (g), affine-moment agreement, (g)-moment agreement, and equality of the measures.

* `cor_tuple` and `cor_square` are accurately described as stronger ambient-space surrogates. Their compressed tuples and unital functional calculi act on the full ambient Hilbert space, not exactly on (H=\operatorname{ran}P).

* `declarations/LEAN_DECLARATION_SCAN.md:31–36` gives the actual current declaration and `sorry` coordinates.

* No headline theorem or operator corollary is represented as Lean-verified.

The stale publication-status wording in four comments/documents does not change the Lean code or the formalization boundary, so it does not cause Category 5 itself to fail.

## 6. Release readiness and public-claim scope — PASS

The mathematical and verification claims are bounded correctly:

* The work is presented as an ordinary proposed proof for compact convex sets of affine dimension at most two.
* The TeX expressly disclaims an unrestricted affine-dimension-three result at lines 626–630.
* It does not claim human peer review; lines 700–709 state that the audits are AI-assisted and specialist review remains pending.
* It does not claim complete Lean verification; lines 711–721 disclose the three `sorry` declarations and pending replay.
* It does not claim absolute historical priority; lines 148–151 and 726–729 characterize the literature conclusion as evidence from qualified negative searches.
* No disclosed limitation—lack of completed formalization, lack of specialist human review, or bounded negative-search confidence—was treated as a defect.

# Final verdict

**OVERALL FAIL — Category 2 fails because four current, non-historical files retain an unqualified “unpublished” description of Scherer’s planar theorem or paper that conflicts with the bundle’s own final literature report and current publisher metadata. No mathematical, reproducibility, provenance/authorship, formalization-boundary, or public-claim-scope defect was found. The four exact locations are `formalization/aristotle_return_v1/RequestProject/Statements.lean:19`, `formalization/aristotle_return_v1/GAP_REPORT.md:127`, `formalization/aristotle_return_v1/GAP_REPORT.md:171–173`, and `formalization/aristotle_return_v1/ARISTOTLE_SUMMARY.md:20`.**

[1]: https://arxiv.org/abs/1410.6800?utm_source=chatgpt.com "Convergence of functions of self-adjoint operators and applications"
[2]: https://www.sciencedirect.com/science/article/pii/S0022123626002661 "https://www.sciencedirect.com/science/article/pii/S0022123626002661"
