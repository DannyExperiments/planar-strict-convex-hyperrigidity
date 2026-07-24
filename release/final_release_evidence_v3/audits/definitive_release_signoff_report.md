# Release-signoff audit

I independently checked the supplied TeX and evidence ZIP. Historical audit conclusions were used only to identify claimed provenance and chronology, not as evidence that the current packet passes.

## Category verdicts

| # | Category                                  | Verdict  | Confidence                                                                | Basis                                                                                                                                                                                                                 |
| - | ----------------------------------------- | -------- | ------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1 | Mathematics                               | **PASS** | High                                                                      | All fourteen theorem/lemma/corollary statements, the separately numbered remark, every local proof, endpoint case, measurable-selection step, POVM/PVM step, and stated consequence check out.                        |
| 2 | Literature and scope                      | **PASS** | High for cited-result accuracy; moderate for negative-search completeness | The one-dimensional prior-art distinction, Scherer scope, special planar cases, graph-lift dimension distinction, spectrahedral limitation, and qualified negative-search wording are accurate.                       |
| 3 | Provenance, authorship, and AI disclosure | **FAIL** | High                                                                      | Authorship, AI disclosure, “separately run” wording, and the exact count all pass. The current self-containment claims and several bundle-local provenance paths do not.                                              |
| 4 | Reproducibility and build chain           | **FAIL** | High                                                                      | ZIP integrity, root checksums, TeX, PDF, CI artifact, CI log, workflow, documentary patch, and local compilation pass. The dedicated immutable-source manifest fails, and two files it identifies are absent.         |
| 5 | Formalization boundary                    | **FAIL** | High                                                                      | The foundational scan, exactly three disclosed `sorry`s, and the explicit no-Lean-verification boundary all pass. The repeated claim that the operator corollaries are faithful exact-scope Lean statements is false. |
| 6 | Release readiness and public-claim scope  | **PASS** | High                                                                      | The public mathematical claim is confined to an ordinary proposed proof in affine dimension at most two, with no unrestricted dimension-three, human-peer-review, Lean-verification, or absolute-priority claim.      |

## 1. Mathematics — PASS

The TeX contains exactly:

* 2 theorem environments;
* 9 lemma environments;
* 3 corollary environments;
* 1 separately numbered remark.

Thus the metadata count of **fourteen theorem/lemma/corollary statements plus one numbered remark** is exact.

| Statement                                  |                  TeX location | Verdict  | Independent check                                                                                                                                                                                                                                                                                         |
| ------------------------------------------ | ----------------------------: | -------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Main planar POVM/PVM theorem, `thm:main`   |          69–80; proof 566–624 | **PASS** | The proof correctly separates affine dimensions (0,1,2), reconstructs the interior, exposed faces and extreme boundary, then removes every cross-stratum block by positivity.                                                                                                                             |
| Square compression corollary, `cor:square` | 90–102; specialization at 677 | **PASS** | It is exactly the (m=2), (K=[0,1]^2) specialization of the tuple corollary. Positivity and contractivity place the joint spectrum in the square.                                                                                                                                                          |
| Compact-fiber selection                    |                       172–204 | **PASS** | Fiber-distance functions are lower semicontinuous; first-index choices are Borel; the recursively chosen points are Cauchy; the pointwise limit is Borel and lies in the closed fiber.                                                                                                                    |
| Bounded Borel subgradient selector         |                       206–230 | **PASS** | Relative-epigraph separation gives nonempty subdifferentials on (\operatorname{ri}K); compact containment supplies a uniform interior radius; the subgradients are uniformly bounded; the graph is compact; the preceding selection lemma applies.                                                        |
| Critical reciprocal energy                 |                       244–300 | **PASS** | The (d=0) case is explicitly handled. For (d=1,2), monotonicity gives the Bregman bound, Minty variables give the Lipschitz graph estimate, grid counting plus Cauchy–Schwarz gives the small-ball lower bound, and layer cake yields divergence of (\int_0 r^{d-3},dr).                                  |
| Common-domain localization                 |                       306–354 | **PASS** | The inequality (cT\le M_z), the orientation of Douglas factorization, the fixed nonzero vector spectral measure, bounded truncations (h_n), functional calculus, monotone convergence, joint Borel measurability and Tonelli are all used correctly. No measurable choice of Douglas factors is required. |
| Affine exposure                            |                       356–371 | **PASS** | The level-set inequality (E({r\ge1/n})\le n\int r,dE), compression by (F({r=0})), and strong monotone convergence give the claimed support statement.                                                                                                                                                     |
| Interval reconstruction                    |                       373–410 | **PASS** | The singleton case (a=b) is explicit. Both endpoints are exposed. Compact interior sets are reconstructed in both localization orders; positivity eliminates cross terms; regularity and polarization extend equality to all Borel sets.                                                                  |
| Boundary stratification                    |                       417–444 | **PASS** | Every nonextreme planar boundary point lies in the relative interior of a maximal exposed segment; those interiors are disjoint and relatively open, hence countable; their endpoints are extreme; the remaining extreme boundary is compact.                                                             |
| Measurable extreme representation          |                       448–483 | **PASS** | The barycenter relation has nonempty compact fibers in (K\times\mathcal P(\operatorname{ex}K)); the selection is Borel; a probability measure with an extreme barycenter is correctly shown to be the corresponding point mass.                                                                           |
| Imported Scherer theorem                   |                       506–525 | **PASS** | The cited planar hyperrigidity result has the required scope, and the conversion from hyperrigidity to the stated POVM/PVM equality uses the standard commutative POVM–UCP correspondence and scalar-measure uniqueness correctly.                                                                        |
| Extreme-supported reconstruction           |                       527–562 | **PASS** | Boundaryization preserves affine moments; Scherer identifies the boundaryized POVM; strict Jensen inequality is established for every non-point probability measure; positivity forces support on the extreme boundary.                                                                                   |
| Numbered dimension remark                  |                       626–630 | **PASS** | It accurately states that the inverse-square argument is used only in affine dimensions at most two and supplies no unrestricted dimension-three theorem.                                                                                                                                                 |
| Tuple compression corollary, `cor:tuple`   |                       634–675 | **PASS** | Affine separation proves the compressed joint spectrum lies in (K); equality of compressed and spectral measures follows from the main theorem; the second-moment leakage identity forces every off-diagonal block to vanish.                                                                             |
| Hyperrigidity corollary, `cor:hyperrigid`  |                       679–696 | **PASS** | The UCP/POVM and representation/PVM correspondences are correctly applied; affine functions generate (C(K)); the unique-extension characterization yields hyperrigidity without a separability condition on the acting Hilbert space.                                                                     |

The main proof also correctly handles the following cross-cutting issues:

* **Endpoint and degenerate cases:** affine dimension zero at 567; singleton interval at 380–382; exposed interval endpoints at 384–409.
* **Measurability:** the compact-fiber selector, subgradient selector, jointly Borel reciprocal-Bregman kernel, Borel barycenter selector, Borel evaluation (\nu\mapsto\nu(S)), and kernel Fubini construction are all adequate.
* **Operator theory:** the Douglas orientation at 302–304 is correct; the functional-calculus estimate at 340–349 is correctly derived; positive-compression implications are used correctly; the tuple leakage identity at 665–674 is exact.
* **No hidden dimensional extension:** every use of the critical energy estimate is confined to (d\le2).
* **Documentary patch:** applying `AUDITED_TO_REVISED_TEX.patch` to the preserved audited TeX reproduces the current TeX byte-for-byte. Its hunks alter disclosure, provenance and scope wording only; no theorem, proof, equation or numbered remark changes.

## 2. Literature and scope — PASS

Brown’s Corollary 2.7 is exactly the one-variable strict-convex compression result needed to support the statement that affine dimension at most one was already known. It applies on arbitrary Hilbert spaces and does not impose an atomic-spectrum condition. ([[arXiv](https://arxiv.org/pdf/1410.6800)][1])

Scherer’s planar result states that for every compact convex (K\subset\mathbb R^2), (A(K)) is hyperrigid in (C(\operatorname{ex}K)). The manuscript’s graph-hull distinction is therefore correct: a nonaffine graph lift raises affine dimension by one, so Scherer covers an original one-dimensional (K), while an original planar (K) generally produces a three-dimensional graph hull. ([[arXiv](https://arxiv.org/abs/2411.11709)][2])

The hyperrigidity-to-unique-extension step used in the final corollary agrees with the standard characterization that an operator system is hyperrigid exactly when every representation has the unique-extension property. 

The descriptions of the nearby special cases are also accurate:

* Shankar proves hyperrigidity of ({T,TT^*}) for normal (T), yielding the positive-definite quadratic planar class after affine change of variables. ([[arXiv](https://arxiv.org/abs/1812.08574)][3])
* Pietrzycki–Stochel study precisely which monomial systems in a single commutative generator are hyperrigid; that is a special-function class, not arbitrary continuous strictly convex (g). ([[arXiv](https://arxiv.org/abs/2405.20814)][4])
* Scherer’s spectrahedra theorem requires a compact spectrahedron with closed extreme boundary, so it applies to the graph-hull construction only when that graph hull is spectrahedral. ([[arXiv](https://arxiv.org/pdf/2601.16075)][5])

The current TeX qualifies the search correctly at 148–151 and 721–724: it says that two separately run searches **located no prior theorem with the full scope**, and expressly says that this is not a historical-priority claim. My primary-source search likewise did not locate a theorem simultaneously covering arbitrary planar compact convex (K), arbitrary continuous strictly convex (g), and arbitrary—including diffuse—representations. That conclusion remains a negative-search inference, not proof of nonexistence. Confidence in the scope comparison is high; confidence in exhaustive historical completeness is moderate.

There is no absolute “first proof,” “first resolution,” or equivalent priority wording in the current TeX or current metadata. `metadata/CLAIMS_MATRIX.md:13–14` uses “apparently new” and records absolute priority as pending.

## 3–4. Provenance and reproducibility defects

### A. The supplied packet is not self-contained under its own immutable-source manifest

The outer ZIP is structurally sound, and `ROOT_SHA256SUMS` verifies **all 55 payload files** covered by it. That proves that the files actually included have not changed. It does not prove that every file claimed by the packet was included.

Running the packet’s dedicated manifest from the packet root gives status 1:

```text
source/Artifact_A_square_polytope.md: FAILED open or read
source/Artifact_B_planar_compact_convex.md: FAILED open or read
literature/preliminary_search_1.md: FAILED open or read
literature/preliminary_search_2.md: FAILED open or read
WARNING: 4 listed files could not be read
```

The exact failures are:

| Manifest location                    | Claimed path                                 | Supplied state                                                                            |
| ------------------------------------ | -------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `metadata/SOURCE_MANIFEST.sha256:1`  | `source/Artifact_A_square_polytope.md`       | Byte-identical artifact is present only at `sources/Artifact_A_square_polytope.md`.       |
| `metadata/SOURCE_MANIFEST.sha256:2`  | `source/Artifact_B_planar_compact_convex.md` | Byte-identical artifact is present only at `sources/Artifact_B_planar_compact_convex.md`. |
| `metadata/SOURCE_MANIFEST.sha256:11` | `literature/preliminary_search_1.md`         | File absent from the ZIP.                                                                 |
| `metadata/SOURCE_MANIFEST.sha256:12` | `literature/preliminary_search_2.md`         | File absent from the ZIP.                                                                 |

The two source-artifact hashes themselves are correct:

```text
c43e287a…95b69  sources/Artifact_A_square_polytope.md
a0ebb8e7…c4728  sources/Artifact_B_planar_compact_convex.md
```

The two preliminary-search byte sequences are not present under any path. The CI log confirms that both files existed in the source repository and were part of the original manifest: `build/CI_JOB_LOG.txt:123–137` records both preliminary files as `OK`. Thus these are omitted packet files, not nonexistent historical references.

The following **current** claims are consequently false as descriptions of the supplied ZIP:

* `MANIFEST.md:1`: **“Self-contained final release evidence bundle.”**
* `MANIFEST.md:3–4`: **“This directory supplies the exact bytes omitted from the two-file submission…”**
* `DOCUMENTARY_REPAIRS.md:28–30`: **“this self-contained bundle containing the exact referenced bytes…”**
* `metadata/PUBLICATION_CHECKLIST.md:22`: **“Final release audit's self-contained evidence-bundle repair completed.”**
* `metadata/PUBLICATION_CHECKLIST.md:31`: **“Preliminary searches preserved.”**
* `metadata/REPOSITORY_README.md:19`: **“a self-contained evidence bundle has been prepared.”**
* `metadata/PROVENANCE.md:37–39`: **“A complete bundle is preserved under `release/`.”** That path is not internally resolvable from the supplied bundle, and the supplied bundle omits two manifest-listed files.
* `metadata/PROVENANCE.md:89–90`: **“the … workflow, scripts, and build record are included in the self-contained release bundle.”** The listed build artifacts are present, but the description of the enclosing bundle as self-contained is false.
* `metadata/PROVENANCE.md:152–154`: **“a self-contained release-evidence bundle was sealed…”**

The historical re-audit’s contrary conclusion is accurately preserved as historical evidence, but it does not survive this independent manifest check.

### B. Bundle-local provenance paths are internally inconsistent

Several hashes identify the correct bytes, but their current path statements describe the original repository rather than the supplied packet and are not marked as such:

* `metadata/PROVENANCE.md:7–8` lists `source/…`; the packet’s own `MANIFEST.md:14` and actual tree use `sources/…`.
* `metadata/PROVENANCE.md:32–33` lists the final audit packet and prompt under `audits/…`; the supplied files are under `audit_inputs/…`.
* `metadata/SOURCE_MANIFEST.sha256:1–2` repeats the unresolved `source/…` paths.
* `metadata/PROVENANCE.md:38–39` points to a containing `release/` directory that does not exist inside the supplied ZIP root.

The relevant hashes match the relocated files, so this is a path/provenance inconsistency rather than evidence of altered source bytes.

### Reproducibility checks that did pass

The failure above is narrow but dispositive. The rest of the build chain verifies:

* Outer ZIP integrity: no compressed-data errors.
* `ROOT_SHA256SUMS`: 55 entries, exactly matching the 55 payload files, all verified.
* Supplied external TeX and `paper/planar_strict_convex_hyperrigidity.tex`: byte-identical, SHA-256
  `42095124abea7dde36357f829cca671a1a548ce5c550ecefe68374852117e0d2`.
* CI artifact ZIP: structurally valid, SHA-256
  `ddbe1103e800cd84ad78a7fcb39a31b1003afb7449f171c66313bf4f5ed4f22b`.
* Artifact ZIP contents: exactly one 317,441-byte PDF.
* Extracted artifact PDF and bundled PDF: byte-identical, SHA-256
  `92cd4a3483defa6ad0c89076d4c90c3aa50dc7cc91574715fa414588223ce84a`.
* CI job log hash:
  `d8a48cb20b6384a923a83e9ee54567594be3c7d8dffab1bb6d48affcd3496630`.
* PDF properties: pdfTeX 1.40.29, 8 A4 pages, unencrypted, no JavaScript.
* All eight exact CI-PDF pages rendered without clipping, overlap, broken glyphs, unresolved references or bibliography-layout defects.
* Clean local TeX build: successful, 8 A4 pages, no unresolved references or overfull-box warning. The local PDF hash differs because the local engine is pdfTeX 1.40.26 rather than 1.40.29.
* CI workflow, script snapshots and log agree on commit
  `9e5140cfa1c227fff5075dc326c65a895b4e748c`, run `30068419467`, job `89403869296`, artifact `8587089094`.
* The documentary patch applies cleanly to the preserved audited TeX and yields the current TeX’s exact hash.

The scripts under `build/scripts/` retain the original repository-relative path logic, so in their relocated packet position they are archival snapshots rather than directly runnable bundle-root scripts. `MANIFEST.md:42` expressly makes the repository-level verification layout authoritative, so I do not count that relocation by itself as an additional false claim.

## 5. Formalization boundary — FAIL for exact-scope overstatement, not for missing proofs

The honest boundary checks pass:

* Aristotle archive SHA-256:
  `1887d86be11c597cfcbc604346b3efb55260cb3bbecbf69720443c5210b6bc1f`.
* Extracting the archive produces a tree byte-for-byte identical to `formalization/aristotle_return_v1/`.
* The foundational scan of `RequestProject/POVM.lean` and `RequestProject/Main.lean` finds no `sorry`, `admit`, `unsafe`, new `axiom`, or new `constant`.
* `RequestProject/Statements.lean` contains exactly three standalone proof escapes:

  * line 63: `thm_main`;
  * line 126: `cor_tuple`;
  * line 157: `cor_square`.
* The packet repeatedly and correctly states that independent replay is pending and that the manuscript theorem is not Lean-verified.

Those disclosed limitations are not defects.

The defect is that the two Lean operator-corollary declarations are **not** faithful exact-scope versions of the TeX corollaries.

### Exact mismatch

The manuscript’s tuple corollary says at `paper/planar_strict_convex_hyperrigidity.tex:638–646`:

```text
H = ran P,
A_j = P T_j P |_H,
P g(T) P |_H = g(A).
```

Thus (A_j) and its joint functional calculus act on the compressed Hilbert space (H=\operatorname{ran}P), and the equality is an equality of operators on (H).

The Lean declaration instead says at `Statements.lean:118–124`:

```lean
(A : Fin m → (𝒦 →L[ℂ] 𝒦))
(hA : ∀ j, A j = P * T j * P)
(ΦA : JointCFC m K 𝒦 A)
(hcompr : P * ΦT.Φ g * P = ΦA.Φ g)
```

Here:

* (A) acts on the full ambient space (\mathcal K), not on `ran P`;
* `ΦA` is a unital joint calculus on the full ambient space;
* the compression equality is asserted on the full ambient space, not after restriction to `ran P`.

The same mismatch occurs in `cor_square` at `Statements.lean:149–155`.

This is materially stronger. On (\ker P), the left side of the full-space compression equality vanishes, while a unital functional calculus for the ambient zero-complement tuple generally does not. In the square case, the natural complement action sends (f) to (f(0,0)I_{\ker P}), so the Lean equality imposes an additional complement condition absent from the manuscript. For a general (K) not containing the zero tuple, the existence of the ambient `JointCFC` can itself impose an additional restriction whenever (\ker P\ne0).

Accordingly, these current claims are false insofar as they include `cor_tuple` and `cor_square`; the main `thm_main` declaration itself matches the manuscript scope:

* TeX `711–715`: **“its exact main theorem and two operator corollaries remain explicit `sorry` declarations.”**
* `Statements.lean:4–8`: **“Faithful statements … faithfully and at full scope.”**
* `Statements.lean:19–26`: **“stated exactly as in the manuscript … nothing has been strengthened.”**
* `Statements.lean:99–109`: the documentation describes `ΦA` as acting **“on `H = ran P`”** and says the corollary is at full manuscript scope, while the immediately following type uses ambient `𝒦`.
* `Statements.lean:132–141`: the same full-scope claim for the square corollary.
* `formalization/ARISTOTLE_RETURN_STATUS.md:10–14`: **“faithful exact-scope statements.”**
* `formalization/ARISTOTLE_SUBMISSION_RECEIPT.md:61–65`: **“The exact main theorem and operator corollaries are stated…”**
* `formalization/aristotle_return_v1/ARISTOTLE_SUMMARY.md:2–4, 14–17, 28`: **“faithful full-scope statements,” “no strengthened hypotheses,”** and **“stated at exact scope.”**
* `formalization/aristotle_return_v1/GAP_REPORT.md:17–23, 86–102, 174–178`: **“faithful, full-scope,” “Hypotheses were not strengthened,”** and **“exact scope has been pinned down.”**
* `metadata/REPOSITORY_README.md:92–93`: **“exact-scope statements.”**
* `metadata/CLAIMS_MATRIX.md:17`: **“three exact-scope declarations remain `sorry`.”**
* `declarations/LEAN_DECLARATION_SCAN.md:30`: labels the declarations **“Exact-scope statements.”**

Again, the failure is the inaccurate exact-scope description—not the presence of `sorry`, the pending replay, or the absence of a complete formalization.

## 6. Public-claim scope — PASS

The current public-facing limitations are internally correct:

* The theorem and abstract consistently claim only affine dimension at most two: TeX 35–46 and 69–80.
* The numbered remark at 626–630 expressly disclaims an unrestricted affine-dimension-three theorem.
* The operator consequences remain within the same affine-dimension-at-most-two hypothesis.
* The TeX says the audits are not human peer review and that specialist review remains pending: 700–709.
* It expressly says the main theorem is not formally verified: 711–717.
* It describes the literature result as a negative search rather than historical priority: 721–724.
* `metadata/AI_DISCLOSURE.md:27–29, 47–48` and `metadata/CLAIMS_MATRIX.md:14–15, 19–28` maintain the same boundaries.
* There is no absolute “first,” unrestricted dimension-three, human-peer-review, or full-Lean-verification claim.

**OVERALL FAIL — The ordinary TeX mathematics, cited-result scope, build output, PDF, documentary patch, authorship/AI disclosure, theorem count and public-claim limitations pass; however, the supplied packet makes false self-containment and preliminary-search-preservation claims at `MANIFEST.md:1–4`, `DOCUMENTARY_REPAIRS.md:28–30`, `metadata/PUBLICATION_CHECKLIST.md:22,31`, `metadata/REPOSITORY_README.md:19` and `metadata/PROVENANCE.md:37–39,89–90,152–154`; its `metadata/SOURCE_MANIFEST.sha256:1–2,11–12` is not reproducible from the ZIP; its bundle-local provenance paths are inconsistent at `metadata/PROVENANCE.md:7–8,32–33,37–39`; and its current TeX/formalization metadata falsely describe the ambient-space Lean operator corollaries as faithful exact-scope, no-strengthening versions of the manuscript’s `ran P` corollaries at the locations enumerated above.**

[1]: https://arxiv.org/pdf/1410.6800 "arXiv:1410.6800v3  [math.FA]  18 May 2016"
[2]: https://arxiv.org/abs/2411.11709 "[2411.11709] The Hyperrigidity Conjecture for compact convex sets in $\mathbb{R}^2$"
[3]: https://arxiv.org/abs/1812.08574 "[1812.08574] Hyperrigid generators in C*-algebras"
[4]: https://arxiv.org/abs/2405.20814 "[2405.20814] Hyperrigidity I: singly generated commutative $C^*$-algebras"
[5]: https://arxiv.org/pdf/2601.16075 "The Hyperrigidity Conjecture for Spectrahedra"
