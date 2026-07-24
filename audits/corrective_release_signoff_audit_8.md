# Corrective full release-signoff audit

## Audited artifacts

| Artifact                                               | SHA-256                                                            |
| ------------------------------------------------------ | ------------------------------------------------------------------ |
| Attached current TeX                                   | `1902dc564a0a2fc09cd6a04fa6d56943deae15453b79d9841a3998b462426014` |
| Bundled `paper/planar_strict_convex_hyperrigidity.tex` | `1902dc564a0a2fc09cd6a04fa6d56943deae15453b79d9841a3998b462426014` |
| Submitted evidence ZIP v2                              | `648afefc4539b8af7479a2927c63315e17cf768d07b01cc2043bfa28c22fc44f` |

The attached TeX and the bundled TeX are byte-for-byte identical.

| Category                                       |  Verdict |                                                                             Confidence |
| ---------------------------------------------- | -------: | -------------------------------------------------------------------------------------: |
| 1. Mathematics                                 | **PASS** |                                                                                   High |
| 2. Literature and scope                        | **PASS** | High for positive scope claims; moderate for inherently non-exhaustive negative search |
| 3. Provenance, authorship, and disclosure      | **FAIL** |                                                                                   High |
| 4. Reproducibility and bundle self-containment | **FAIL** |                                                                                   High |
| 5. Formalization boundary                      | **PASS** |                                                                                   High |
| 6. Release readiness and public-claim scope    | **PASS** |                                                                                   High |

---

## 1. Mathematics — PASS

I independently checked all fifteen numbered items, their proofs or derivations, the intervening unnumbered constructions, all dimension endpoints, and the operator-theoretic consequences.

| Item                               |                   TeX location | Independent check                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| ---------------------------------- | -----------------------------: | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Theorem 1.1                        | Statement 69–80; proof 566–624 | The (d=0) singleton case is valid; (d=1) is supplied by interval reconstruction; the planar proof correctly reconstructs the interior, flat-face and extreme strata and then removes every cross term using positivity and the countable strong decomposition of the PVM.                                                                                                                                                                                                    |
| Corollary 1.2                      |     90–102; specialization 677 | Correct specialization of Corollary 5.1 to (m=2), (K=[0,1]^2). Commuting positive contractions have joint spectrum in the square.                                                                                                                                                                                                                                                                                                                                            |
| Lemma 2.1, compact-fiber selection |                        172–204 | Fiber-distance functions are lower semicontinuous; first-index selections are Borel; the recursive approximants are uniformly Cauchy pointwise; the limit is Borel and belongs to the closed fiber.                                                                                                                                                                                                                                                                          |
| Lemma 2.2, subgradient selector    |                        206–230 | Relative-interior epigraph support gives a nonzero vertical coefficient; compact containment in (\operatorname{ri}K) gives a common relative ball and the asserted uniform subgradient bound; the graph is compact and Lemma 2.1 applies.                                                                                                                                                                                                                                    |
| Supporting defect and separation   |                        232–242 | (D_z(t)\ge0); strict convexity gives equality only at (t=z); compactness of the full subgradient graph over disjoint compact sets gives the uniform positive lower bound.                                                                                                                                                                                                                                                                                                    |
| Lemma 2.3, reciprocal energy       |                        244–300 | The affine-dimension-zero atom is handled. The monotonicity identity, estimate (D_z(t)\le\frac12|G(t)-G(z)|^2), Minty-variable inequalities, injectivity of (U), grid pullback, Cauchy–Schwarz pair-mass estimate and layer-cake formula are all correctly oriented. The final integral diverges exactly for (d=1,2).                                                                                                                                                        |
| Lemma 2.4, localization            |                        306–354 | The operator inequality (cE(J)\le\int D_z,dE) is valid. Douglas factorization is used in the correct orientation. The scalar measure (\mu(S)=|F(S)\eta|^2) is fixed, nonzero and supported on (C). The functional-calculus identity at 342–344 and monotone-convergence limit are correct. No measurable selection of (C_z) or (v_z) is needed; only a uniform pointwise bound is used. The reciprocal kernel is jointly Borel, so Tonelli gives the required contradiction. |
| Lemma 2.5, affine exposure         |                        356–371 | (1_{{r\ge1/n}}\le nr), positivity and compression by (F(L)) give zero, and increasing-set convergence gives the conclusion.                                                                                                                                                                                                                                                                                                                                                  |
| Lemma 2.6, interval reconstruction |                        373–410 | The singleton endpoint case is explicitly correct. Both affine endpoint exposures are valid. The two compact exhaustions of the open interval are in the correct order. Regularity and polarization extend compact-set equality, and positivity removes all endpoint and interior cross terms.                                                                                                                                                                               |
| Lemma 3.1, boundary stratification |                        417–444 | Every nonextreme planar boundary point lies in the relative interior of a maximal exposed segment; maximal segment interiors are pairwise disjoint relatively open sets and hence countable; their endpoints are extreme; the displayed complement proves (\operatorname{ex}K) is closed and compact.                                                                                                                                                                        |
| Lemma 3.2, extreme representation  |                        448–483 | Boundary points use at most two extreme points; an interior line decomposition gives at most four. The barycenter relation is closed in (K\times\mathcal P(Z)), so the measurable-selection lemma applies. An extreme barycenter forces the representing probability to be (\delta_z).                                                                                                                                                                                       |
| Boundaryization                    |                        485–517 | Evaluation at a Borel set is Borel on (\mathcal P(Z)); scalarization, polarization and monotone convergence give a normalized WOT-countably additive POVM. The bounded-kernel Fubini identity is valid.                                                                                                                                                                                                                                                                      |
| Theorem 3.3, Scherer               |                        519–525 | The cited hyperrigidity theorem has exactly the planar compact-convex scope needed. Its translation from UCP maps and representations to normalized POVMs and PVMs is correct.                                                                                                                                                                                                                                                                                               |
| Lemma 3.4, extreme reconstruction  |                        527–562 | Boundaryization preserves affine moments. Strict Jensen inequality for a non-point-mass representing probability is correctly proved using two independent samples. The nonnegative defect vanishes exactly on (Z), and positivity forces the original POVM to be supported there.                                                                                                                                                                                           |
| Remark 4.1                         |                        626–630 | Correctly limits the inverse-square argument to affine parameter dimension at most two and makes no unrestricted dimension-three assertion.                                                                                                                                                                                                                                                                                                                                  |
| Corollary 5.1                      |                        634–675 | Affine separation correctly proves the compressed joint spectrum lies in (K). Equality of POVM and PVM gives the second moments. The leakage identity is positive and forces both off-diagonal blocks of every (T_j) to vanish.                                                                                                                                                                                                                                              |
| Corollary 5.2                      |                        679–696 | The POVM–UCP and PVM–representation correspondences are correctly used. (A(K)) contains constants and separates points, so (C^*(S_g)=C(K)). Compact finite-dimensional (K) is metrizable, and the representation-level unique-extension characterization yields hyperrigidity without separability of the acting Hilbert space.                                                                                                                                              |

I also checked the graph-hull claims at TeX 130–159: restriction from (A(L_g)) has range (S_g), strict Jensen equality gives (\operatorname{ex}L_g=\Gamma_g), and nonaffine (g) raises affine dimension by one. No hidden smoothness, strong-convexity, finite-rank, atomicity or acting-space separability hypothesis is used.

No false theorem, missing endpoint, invalid measurability step, reversed operator inequality or unsupported consequence was found.

---

## 2. Literature and scope — PASS

Brown’s one-variable result supplies the strictly convex interval compression theorem in arbitrary Hilbert space, including the infinite-dimensional compression consequence. Scherer also explicitly describes his planar affine theorem as generalizing Brown’s strictly convex function-system result. The manuscript’s statement that affine dimension at most one was previously known is therefore accurate. ([[arXiv](https://arxiv.org/pdf/1410.6800)][1])

Scherer’s Theorem 3.8 states that, for every compact convex planar (K), the continuous affine function system (A(K)) is hyperrigid in (C(\operatorname{ex}K)). That is exactly the external result used at TeX 506–525. It does not directly settle the manuscript’s graph lift for a nonaffine function on a two-dimensional (K), because that graph hull has affine dimension three. ([[arXiv](https://arxiv.org/html/2411.11709)][2])

The descriptions of the special cases are also accurate:

* Shankar proves that for a normal operator (T), ({T,TT^*}) is hyperrigid. After an invertible real linear change of coordinates, a positive-definite planar quadratic is the squared modulus of a normal generator, up to affine terms. ([[arXiv](https://arxiv.org/abs/1812.08574)][3])
* Pietrzycki–Stochel study exactly which specified monomial systems in one commutative normal generator are hyperrigid. ([[arXiv](https://arxiv.org/abs/2405.20814)][4])
* Davidson–Kennedy relate Choquet order, unique extension and hyperrigidity for function systems as described. ([[arXiv](https://arxiv.org/abs/1608.02334)][5])
* Scherer’s spectrahedra result assumes a compact spectrahedron with closed extreme boundary, matching TeX 153–159. Since (\operatorname{ex}L_g=\Gamma_g) is compact, its remaining applicability condition here is that (L_g) actually be a spectrahedron. ([[arXiv](https://arxiv.org/abs/2601.16075)][6])

The literature-search language is properly qualified:

* TeX 148–151 says that two searches “located no prior theorem” and immediately states that this is “not a claim of historical priority.”
* TeX 726–729 repeats that it is negative-search evidence, not priority.
* `AI_DISCLOSURE.md:31–36,52–53` and `CLAIMS_MATRIX.md:13–15` preserve the same distinction.
* No “first proof,” “first theorem,” “resolved for the first time,” or equivalent absolute-priority wording occurs in the current TeX.

My current primary-source search found the same scope boundary and no contradictory full-scope theorem. That remains a negative search, not proof of priority.

---

## 3. Provenance, authorship, and disclosure — FAIL

The substantive provenance checks pass:

* The external and bundled TeX files are byte-identical.
* TeX 25–30 identifies DannyExperiments as author/curator, GPT-5.6 Pro as generator of the ordinary proof and Codex as manuscript/audit/provenance tooling. This agrees with `AI_DISCLOSURE.md:3–13`.
* `PROVENANCE.md:3–8` correctly establishes the repository-relative path convention.
* The ZIP mirrors `paper/`, `source/`, `audits/`, `literature/`, `formalization/`, `declarations/`, `build/`, `.github/workflows/` and `scripts/` from its extracted root.
* The enclosing repository’s `release/` directory is intentionally absent rather than recursively embedded.
* The stated artifact hashes and workflow/build identifiers agree with the included files.
* `AUDITED_TO_REVISED_TEX.patch` applies cleanly to the preserved audited TeX and produces the current TeX exactly.

The category nevertheless fails because current metadata contains two factual inconsistency classes.

### 3.1 Stale exact line positions in the current Lean scan

`declarations/LEAN_DECLARATION_SCAN.md:3–4` describes itself as a static scan of the **documentary-corrected extracted project**, but its block at lines 31–36 states:

```text
55:theorem thm_main
64:  sorry
111:theorem cor_tuple
127:  sorry
144:theorem cor_square
159:  sorry
```

The current file `formalization/aristotle_return_v1/RequestProject/Statements.lean` actually has:

```text
56:theorem thm_main
65:  sorry
112:theorem cor_tuple
128:  sorry
145:theorem cor_square
160:  sorry
```

Thus all six exact current-source coordinates in `LEAN_DECLARATION_SCAN.md:31–36` are false by one line. The declaration names, scopes and count of three `sorry` proofs are correct; only the claimed current positions are stale.

The older coordinates in `formalization/aristotle_return_v1/GAP_REPORT.md:43–45,54` are different: they reproduce the immutable archive’s historical `lake build` and grep output and do match that original archive. I did not count those historical coordinates as current-source defects.

### 3.2 Self-verification metadata is inconsistent with the documented command

`BUNDLE_MANIFEST.md:41–50` states:

> “From the extracted `final_release_evidence_v2` directory:
> `bash VERIFY_BUNDLE.sh`”
> and that the script must finish with `release-bundle: PASS`.

That command does not do so.

The following current provenance passages are consequently inconsistent with the packet’s documented self-verification entry point:

* `PROVENANCE.md:47–50`: “... includes every file in `SOURCE_MANIFEST.sha256`, and **verifies from its own extracted top-level directory**.”
* `PROVENANCE.md:180–182`: “The v2 bundle ... **verifies itself from its extracted root**.”

Verification succeeds only when an explicit directory or ZIP argument is supplied, not under the no-argument command documented for an extracted-root run.

---

## 4. Reproducibility and bundle self-containment — FAIL

The required exact command was run from the directory containing `VERIFY_BUNDLE.sh`:

```text
$ bash VERIFY_BUNDLE.sh
exit status: 1
stdout: 0 bytes
stderr: 0 bytes
```

The cause is exact and reproducible:

* `VERIFY_BUNDLE.sh:4` sets

  ```bash
  script_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
  ```

  Because the script is located at the extracted bundle root, this selects the **parent of the bundle**, not the bundle root.

* `VERIFY_BUNDLE.sh:54–55` sends that parent to `verify_directory`.

* `VERIFY_BUNDLE.sh:10` then silently fails:

  ```bash
  test -f "$bundle_root/ROOT_SHA256SUMS"
  ```

For comparison:

```text
$ bash VERIFY_BUNDLE.sh .
release-bundle: PASS

$ bash VERIFY_BUNDLE.sh /mnt/data/planar-strict-convex-hyperrigidity-final-evidence-v2(2).zip
release-bundle: PASS
```

The explicit-argument successes demonstrate that the underlying checks and payload are sound, but they do not satisfy the requested and documented no-argument extracted-root invocation.

All other requested reproducibility checks pass:

| Check                            | Result                                                                                                     |
| -------------------------------- | ---------------------------------------------------------------------------------------------------------- |
| Outer ZIP integrity              | PASS; no corrupt member                                                                                    |
| ZIP top-level structure          | Exactly one directory: `final_release_evidence_v2/`                                                        |
| `ROOT_SHA256SUMS` exact coverage | 71 listed payload files; 71 actual files excluding the manifest itself; no duplicates, omissions or extras |
| `ROOT_SHA256SUMS` hashes         | 71/71 valid                                                                                                |
| `SOURCE_MANIFEST.sha256`         | 17/17 paths present and hashes valid                                                                       |
| Both source artifacts            | Present                                                                                                    |
| Manifest-listed audit material   | All nine audit reports and the preserved audited TeX present                                               |
| Preliminary searches             | Both present                                                                                               |
| Final literature reports         | Both present                                                                                               |
| CI job log                       | Present; hash valid                                                                                        |
| Workflow                         | Present                                                                                                    |
| Verification/build scripts       | Present                                                                                                    |
| CI artifact ZIP                  | Present; ZIP integrity valid and contains exactly one PDF                                                  |
| Extracted PDF                    | Present                                                                                                    |
| Documentary-only TeX patch       | Present; applies and exactly reproduces current TeX                                                        |
| Artifact/bundled PDF identity    | Byte-identical                                                                                             |
| Legacy `sources/` directory      | Absent                                                                                                     |
| Legacy `audit_inputs/` directory | Absent                                                                                                     |
| Independent TeX compilation      | Successful two-pass compilation; 8 pages; no unresolved reference or citation failure                      |
| PDF inspection                   | 8 pages, A4, unencrypted; no visible clipping or broken page content                                       |

Relevant artifact identities:

```text
CI artifact ZIP:
28c695943def70a219cb01c323025136e0a9ed9ac50366c93e198056e2a5dc12

Bundled and artifact PDF:
27ffab5e1a5d3ab99f2bbe4f5b44d6c62b4d7d79aa8860627e1a73f5e2edadb1
```

This category fails solely because the exact required and documented self-verification command is unreproducible.

---

## 5. Formalization boundary — PASS

The immutable archive has SHA-256:

```text
1887d86be11c597cfcbc604346b3efb55260cb3bbecbf69720443c5210b6bc1f
```

Its gzip and tar structures are intact.

| Required formalization check                                              | Result                                                                                                                                                                                                                                                                                                 |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **(a) Foundational files contain no disclosed proof escape**              | PASS. Independent scans of `RequestProject/POVM.lean` and `RequestProject/Main.lean` found no `sorry`, `admit`, `unsafe`, new `axiom`, new `constant`, `sorryAx`, `@[implemented_by]` or `native_decide`.                                                                                              |
| **(b) Exactly three standalone `sorry` proofs in `Statements.lean`**      | PASS. They occur at current lines 65, 128 and 160 and discharge `thm_main`, `cor_tuple` and `cor_square`, respectively. No additional scanned escape is present.                                                                                                                                       |
| **(c) Comment-stripped Lean code unchanged**                              | PASS. `Statements.lean` differs from the archive only in comments. Its comment-stripped token sequence is identical to the archive. `POVM.lean`, `Main.lean`, `README.md`, `.gitkeep`, `lake-manifest.json`, `lakefile.toml` and `lean-toolchain` are byte-identical.                                  |
| **(d) `thm_main` matches the manuscript theorem**                         | PASS. It quantifies over a finite-dimensional real ambient space, compact convex (K) with `finrank ℝ (vectorSpan ℝ K) ≤ 2`, an arbitrary complex Hilbert space, normalized POVM/PVM, continuous strict convexity, all affine moments and the (g)-moment, and concludes equality of the measures.       |
| **(e) Operator declarations accurately disclosed as stronger surrogates** | PASS. Both `cor_tuple` and `cor_square` put the compressed tuple and its unital joint functional calculus on the full ambient Hilbert space. This imposes an additional complement condition and is stronger than, rather than identical to, the manuscript’s formulations on (H=\operatorname{ran}P). |
| **(f) No headline Lean verification claimed**                             | PASS. The TeX, disclosure, claims matrix, scope correction and Lean comments all state that the three headline declarations remain `sorry`; hyperrigidity is not formally declared; independent replay remains pending.                                                                                |

The stale current line coordinates in `LEAN_DECLARATION_SCAN.md` are a metadata defect under Category 3. They do not alter any of the six substantive formalization-boundary facts above.

---

## 6. Release readiness and public-claim scope — PASS

The public mathematical and verification scope is accurately bounded:

* TeX 35–46 and 66–80 present an ordinary theorem and proposed proof for compact convex (K) of affine dimension at most two.
* TeX 626–630 expressly says the argument does **not** assert the corresponding theorem in unrestricted affine dimension three.
* No unrestricted dimension-three result is claimed anywhere in the current paper or claims matrix.
* TeX 708–709 says the AI audits are not human peer review and specialist review remains pending.
* TeX 711–721 accurately discloses the three `sorry` declarations, the stronger ambient-space status of the two Lean operator surrogates and the absence of formal verification.
* TeX 148–151 and 726–729 explicitly distinguish a qualified negative literature search from historical priority.
* `AI_DISCLOSURE.md:27–29,46–53`, `CLAIMS_MATRIX.md:13–18` and `README.md:25–31,95–104` are consistent with those limitations.
* There is no claim of human specialist approval, full Lean verification, absolute novelty, or historical priority.

The lack of human peer review, the incomplete Lean formalization and the expressly qualified nature of the negative searches are disclosed limitations, not defects.

---

## Exhaustive current-defect ledger

I found two current failure classes:

1. **The documented extracted-root invocation is broken.**
   `bash VERIFY_BUNDLE.sh` exits 1 because `VERIFY_BUNDLE.sh:4` chooses the parent directory. This contradicts `BUNDLE_MANIFEST.md:41–50` and is inconsistent with the self-verification statements at `PROVENANCE.md:47–50` and `PROVENANCE.md:180–182`.

2. **The current Lean declaration scan has six stale exact coordinates.**
   `declarations/LEAN_DECLARATION_SCAN.md:31–36` reports `55,64,111,127,144,159`; the current source locations are `56,65,112,128,145,160`.

No mathematical, literature-scope, authorship-attribution, path-layout, payload-integrity, artifact-identity, Lean-boundary or public-claim defect was otherwise found.

**OVERALL FAIL — Categories 3 and 4 fail because the required no-argument extracted-root verifier invocation is broken and current metadata contains the resulting self-verification inconsistency plus six stale Lean source coordinates. Categories 1, 2, 5 and 6 pass, but the current TeX and evidence ZIP v2 are not internally consistent and release-ready as submitted.**

[1]: https://arxiv.org/pdf/1410.6800 "https://arxiv.org/pdf/1410.6800"
[2]: https://arxiv.org/html/2411.11709 "https://arxiv.org/html/2411.11709"
[3]: https://arxiv.org/abs/1812.08574 "https://arxiv.org/abs/1812.08574"
[4]: https://arxiv.org/abs/2405.20814 "https://arxiv.org/abs/2405.20814"
[5]: https://arxiv.org/abs/1608.02334 "https://arxiv.org/abs/1608.02334"
[6]: https://arxiv.org/abs/2601.16075 "https://arxiv.org/abs/2601.16075"
