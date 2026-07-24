# Referee verdict

**Overall manuscript: REPAIRABLE — high confidence.**

**All fourteen numbered mathematical results: PASS.** I found no false theorem, missing hypothesis, unhandled diffuse case, hidden separability assumption, or invalid cross-term argument.

The manuscript nevertheless should **not be released or submitted in its present form**. The verification/provenance section and title-page attribution contain several unsupported or currently false claims about the final audit, the Aristotle return, repository preservation, and public release. Those are documentary defects, not mathematical defects.

The submitted TeX compiled cleanly in two passes to an eight-page PDF, with no LaTeX warnings or unresolved references.

## Result-by-result verdicts

| Result            | Verdict                     | Referee finding                                                                                                                                                                                                                                            |
| ----------------- | --------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Theorem 1.1**   | **PASS**                    | The proof covers affine dimensions (0,1,2), arbitrary Hilbert spaces, diffuse PVMs, and nonsmooth continuous strictly convex (g). The only substantial imported theorem is Scherer’s planar hyperrigidity theorem.                                         |
| **Corollary 1.2** | **PASS**                    | Correct specialization of Corollary 5.1 to (K=[0,1]^2). Positivity of the compressions ensures their joint spectrum lies in the square.                                                                                                                    |
| **Lemma 2.1**     | **PASS**                    | The lower-semicontinuity argument, first-index construction, Cauchy estimate, and Borel limit are valid for compact metric spaces.                                                                                                                         |
| **Lemma 2.2**     | **PASS**                    | Relative-interior subgradients exist; compactness of (C\subset\operatorname{ri}K) supplies a uniform interior radius and hence a uniform subgradient bound. The graph is compact and Lemma 2.1 applies.                                                    |
| **Lemma 2.3**     | **PASS**                    | The affine-dimension-zero case is explicitly and correctly handled. The cutoff (r_0) is defined before the covering estimate, and every use of the (Mr^{-d}) bound is restricted to (0<r\le r_0).                                                          |
| **Lemma 2.4**     | **PASS**                    | Douglas factorization is used in the correct orientation. The scalar measure is independent of (z), the bound is uniform in (z), the reciprocal kernel is jointly Borel, and Tonelli is applicable without a measurable selection of Douglas contractions. |
| **Lemma 2.5**     | **PASS**                    | The estimate (1_{{r\ge1/n}}\le nr), compression to (F(L)), and monotone convergence give the claimed exposure.                                                                                                                                             |
| **Lemma 2.6**     | **PASS**                    | The singleton case (a=b) is explicitly correct. For (a<b), endpoint exposure, two-way localization, regularity, polarization, and positivity reconstruct the whole PVM, including endpoint atoms and cross terms.                                          |
| **Lemma 3.1**     | **PASS**                    | In affine dimension two, every nonextreme boundary point lies in the relative interior of a maximal exposed segment. The open segment interiors are disjoint and countable; their complement in the boundary is the compact extreme set.                   |
| **Lemma 3.2**     | **PASS**                    | The finite extreme-point representation guarantees nonempty compact fibers. The barycenter relation is closed, the selector is Borel, and extremality forces every representing probability measure of (z\in Z) to be (\delta_z).                          |
| **Theorem 3.3**   | **PASS — external theorem** | This is an accurate POVM/PVM consequence of Scherer’s Theorem 3.8. The translation introduces no extra separability or atomicity assumption.                                                                                                               |
| **Lemma 3.4**     | **PASS**                    | Boundaryization preserves affine moments; Scherer identifies the boundaryized POVM with the PVM; strict Jensen equality detects exactly the extreme set; positivity then forces the original POVM to be supported there.                                   |
| **Corollary 5.1** | **PASS**                    | Affine separation proves (\sigma(A_1,\dots,A_m)\subset K). Equality of compressed and spectral POVMs gives equality of second moments, whose positive defect forces every off-diagonal block to vanish.                                                    |
| **Corollary 5.2** | **PASS**                    | (S_g) generates (C(K)), every representation has the unique-extension property by Theorem 1.1, and no separability of the acting Hilbert space is required.                                                                                                |

There are therefore **no REPAIRABLE or FAIL verdicts among the numbered results**.

# Focused hostile checks

## 1. Lemma 2.3: dimension zero and the (r_0) cutoff

Both previously dangerous points are now sound.

When (d=0), (K=C={z_0}). A nonzero measure on (C) has positive mass at ((z_0,z_0)), where (D_{z_0}(z_0)=0). Under the stated convention (1/0=+\infty), the double integral is immediately infinite. Nothing from the Minty or covering argument is incorrectly invoked in dimension zero.

For (d=1,2), the chain
[
D_z(t)\le \tfrac12|G(t)-G(z)|^2
\le \tfrac12|U(t)-U(z)|^2
]
is valid. The manuscript then explicitly chooses (r_0\in(0,1]) and (M<\infty) so that the grid estimate holds for every (0<r\le r_0). It never extends that bound to arbitrary large (r). The layer-cake lower bound uses only
[
\int_0^{r_0}r^{d-3},dr,
]
which diverges for (d=1,2). The repaired cutoff is sufficient and correctly positioned.

## 2. Lemma 2.6: singleton interval

For (a=b), the Borel (\sigma)-algebra is ({\varnothing,I}). A normalized POVM and normalized PVM both take (I) to the identity and (\varnothing) to zero. Hence they agree. No strict-convexity argument, coordinate moment, or endpoint decomposition is needed.

The subsequent proof explicitly assumes (a<b), so there is no illegal use of the two distinct endpoint functions (t-a) and (b-t) in the singleton case.

## 3. Translation of Scherer’s theorem

Scherer defines hyperrigidity directly by the unique-extension property for every representation and proves in Theorem 3.8 that, for every compact convex (K\subset\mathbb R^2), (A(K)) is hyperrigid in (C(\operatorname{ex}K)). His setup allows an arbitrary Hilbert space. ([[arXiv](https://arxiv.org/abs/2411.11709)][1])

The manuscript’s translation is exact:

* A normalized POVM (M) on (Z=\operatorname{ex}K) gives a unital positive map
  [
  \Phi(h)=\int_Zh,dM.
  ]
  Since (C(Z)) is commutative, a positive map from it is completely positive.
* A PVM (N) gives a representation
  [
  \rho(h)=\int_Zh,dN.
  ]
* Equality for all real affine functions gives equality on the complex operator system generated by them.
* Scherer’s hyperrigidity gives (\Phi=\rho) on all of (C(Z)).
* Riesz uniqueness on the diagonal scalarizations, followed by polarization, gives (M=N).

No separability of the acting Hilbert space, no finite-rank hypothesis, and no atomicity assumption is inserted during this translation.

## 4. Boundaryization, measurability, and Fubini

The boundaryization construction is valid.

Because (x\mapsto\nu_x) is Borel as a map into (\mathcal P(Z)), the function
[
x\longmapsto \nu_x(S)
]
is Borel for each Borel (S\subset Z). More generally,
[
x\longmapsto\int_Zh,d\nu_x
]
is Borel for bounded Borel (h). Thus (x\mapsto\nu_x) is a genuine probability kernel.

For a positive diagonal scalarization (G_{\xi,\xi}), ordinary bounded-kernel integration and monotone convergence give both countable additivity of (\widehat G) and
[
\int_Zh,d\widehat G
===================

\int_K!\left(\int_Zh,d\nu_x\right)dG(x).
]
Polarization then gives the identity for (G_{\xi,\eta}). This avoids any appeal to vector-valued Bochner integration and makes Hilbert-space separability irrelevant.

This part should receive a standard citation to the measurability of evaluation maps on (\mathcal P(Z)) and the Fubini theorem for probability kernels. That would improve auditability, but the existing argument is mathematically sufficient.

## 5. Stone–Weierstrass, generation, and separability

The affine functions contain the constants, are closed under conjugation, and separate points of (K). Consequently, the unital (C^*)-algebra they generate is already (C(K)); adding (g) does not reduce it.

Since (K) lies in a finite-dimensional affine space, it is compact metrizable, and (C(K)) is separable. More importantly, the unique-extension characterization needed here does not require the acting Hilbert space to be separable. Pietrzycki–Stochel’s Appendix B states the equivalence between hyperrigidity and the unique-extension property for every representation without imposing separability on those Hilbert spaces; separability is needed only for additional sequence formulations. ([[arXiv](https://arxiv.org/html/2405.20814)][2])

Corollary 5.2 is therefore correctly stated.

# Scope of the literature comparisons

## Pietrzycki–Stochel

The description is accurate. Their main results concern explicitly constrained subsets of the monomials
[
t^{*m}t^n
]
for a single normal generator, with exponent and spectral-geometric conditions. They do not state the arbitrary-(K), arbitrary-continuous-strictly-convex-(g) theorem proved here. ([[arXiv](https://arxiv.org/html/2405.20814)][2])

Calling these “certain explicitly specified monomial systems” is appropriately conservative. They are contextual precedents and special polynomial-type configurations, not a theorem subsuming Theorem 1.1.

## Shankar

Shankar proves that ({T,TT^*}) is hyperrigid when (T) is normal. After an invertible real-linear change of planar coordinates, a positive-definite quadratic becomes (|z|^2), so the manuscript’s positive-definite-quadratic comparison is legitimate. ([[arXiv](https://arxiv.org/abs/1812.08574)][3])

## Scherer’s spectrahedra theorem

Scherer proves that (A(L)) is hyperrigid in (C(\operatorname{ex}L)) when (L) is a compact spectrahedron and (\operatorname{ex}L) is closed. ([[arXiv](https://arxiv.org/html/2601.16075)][4])

For the graph hull
[
L_g=\operatorname{conv}{(x,g(x)):x\in K},
]
strict convexity gives
[
\operatorname{ex}L_g=\Gamma_g,
]
and (\Gamma_g) is compact. Thus the closed-extreme-boundary condition is automatic here. The only genuine additional restriction is that (L_g) be a spectrahedron.

Not every such graph hull is a spectrahedron: spectrahedra are semialgebraic, whereas one may choose a continuous strictly convex nonsemialgebraic function, for example a suitable quadratic plus (e^{x_1}) on a compact planar convex domain. The corresponding extreme graph is nonsemialgebraic, precluding spectrahedrality. The manuscript’s conclusion that Scherer’s spectrahedral result does not subsume the arbitrary-(g) theorem is correct.

Editorially, “graph hulls (L_g) that happen to satisfy those additional hypotheses” should be sharpened to “graph hulls (L_g) that are spectrahedra,” because compactness and closedness of the extreme set have already been established automatically.

## Novelty language

The negative-search language is properly hedged: the manuscript calls it evidence from a search rather than proof of historical priority. My independent targeted search likewise found the Brown, Shankar, Pietrzycki–Stochel, planar Scherer, and spectrahedral Scherer results, but no exact prior theorem with the manuscript’s full arbitrary continuous strictly convex planar scope. That is **moderate-confidence literature evidence**, not a priority certification.

# External load-bearing dependencies

| Dependency                                                     | Role                                                                                                                                                           | Status                                                 |
| -------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------ |
| **Scherer, Theorem 3.8**                                       | Identifies affine-moment-equal POVMs and PVMs on (\operatorname{ex}K). Essential to Theorem 3.3, Lemma 3.4, and hence Theorem 1.1 in the curved-boundary case. | Exact statement and translation verified.              |
| **Douglas factorization lemma**                                | Converts (cT\le M_z) into the factorization used to obtain the uniform reciprocal-energy bound.                                                                | Correct orientation and application.                   |
| **Commutative spectral/Riesz representation theory**           | PVMs correspond to representations; normalized POVMs correspond to UCP maps; continuous-function integrals determine regular scalar measures.                  | Standard and correctly used.                           |
| **Probability-kernel measurability and bounded-kernel Fubini** | Establishes that (\widehat G) is a POVM and proves the boundary Fubini identity.                                                                               | Correctly invoked; a citation should be added.         |
| **Supporting-hyperplane and affine-separation theorems**       | Supplies relative subgradients and proves compressed joint-spectrum containment.                                                                               | Standard finite-dimensional applications.              |
| **Stone–Weierstrass and hyperrigidity–UEP equivalence**        | Establishes (C^*(S_g)=C(K)) and converts Theorem 1.1 into Corollary 5.2.                                                                                       | Correct, including nonseparable acting Hilbert spaces. |

Brown, Shankar, the main Pietrzycki–Stochel monomial theorems, and Scherer’s spectrahedra theorem are **contextual rather than load-bearing**. Pietrzycki–Stochel’s Appendix B is used for the final hyperrigidity characterization.

# Disclosure and repository audit

This is where the submission fails as written.

## Claims that pass

* The manuscript correctly says the main theorem is **not formally verified in Lean**.
* It correctly says the AI audits are not human peer review and specialist review remains pending.
* The stated GPT-5.6 Pro/Codex division is internally consistent with the repository’s AI disclosure and provenance files.
* The literature-search claim is appropriately limited and does not assert absolute priority. The repository records two such reports and preserves the same limitation.

## Claims that do not pass

### “The final audit passed Theorem 1.1 and its corollaries”

**FAIL as a repository-supported factual claim.**

The repository’s audit index lists four audits of predecessor Artifacts A and B. It identifies `FINAL_PAPER_BLIND_AUDIT_PROMPT.txt` as a **prompt** for a future fresh audit, not as an audit return.

The checksum manifest likewise lists the four artifact-audit reports and the final-paper prompt, but no final assembled-manuscript audit report.

The sentence must be removed or replaced by an accurate statement about the scope of the four predecessor-artifact audits. This present report may later be preserved as the fresh assembled-manuscript audit, but its verdict is **REPAIRABLE overall**, not an unqualified manuscript pass.

### “An Aristotle feasibility run produced sorry-free Lean foundations…”

**Unsubstantiated; REPAIRABLE only by evidence or deletion.**

The repository contains an exact-scope prompt, a submission receipt, and a feasibility memo—but no returned Lean archive or Lean source.

The receipt says only that the request was accepted and observed in the `Queued` state. It explicitly warns that the receipt is not evidence that any declaration compiled and that any returned archive must be preserved, independently built, and checked before classification.

The repository’s feasibility memo still states that the theorem has not been formalized and prescribes the status “ordinary proof audited; Lean formalization pending.”

The claim about sorry-free foundations might describe an off-repository return, but it is not verifiable from the location the manuscript cites. It must not appear until the returned files, exact tool output, build instructions, versions, and declaration audit are preserved and independently checked.

### “The … Aristotle return … [is] preserved at [the repository]”

**FAIL.**

No Aristotle return appears in the current manifest. Only the prompt, queued-submission receipt, and feasibility memo appear. The same sentence also overstates preservation of the manuscript itself.

The submitted TeX has SHA-256

```text
aa3c3bb9e673fa1d6c96be225f04670a900c4400d72eb1298bc92c0e07a745db
```

whereas the repository manifest records a different paper hash,

```text
8bf933d2ff955c669b455693102c02d0a08f3326cedd39e57c421d4836edc5e7
```

for its current `paper/planar_strict_convex_hyperrigidity.tex`.

Thus the exact revised submission under review is not presently the preserved repository manuscript.

### “DannyExperiments curated and released the resulting artifact”

**FAIL in the present tense.**

The repository README labels the project “private research preparation,” and the publication checklist says the repository must remain private until release approval.

The repository’s own provenance file also says final authorship and contribution language have not been decided.

“Released” should be replaced by “curated in private pre-release preparation” until an actual public release occurs.

### AI disclosure completeness

**REPAIRABLE.**

The repository’s AI disclosure says that, before public release, it still needs exact available run identifiers, the human curator’s contribution and authorship decision, any human specialist review, and the exact scope of formalization.

The title-page statement is therefore not yet an adequate final disclosure even though its basic allocation of AI roles is internally consistent.

# Strongest theorem actually established

Subject to Scherer’s verified Theorem 3.8 and the standard foundational results listed above, the manuscript establishes the following full-strength statement:

> Let (K) be a compact convex set of affine dimension at most two, (g\in C(K,\mathbb R)) strictly convex, (E) a normalized POVM, and (F) a PVM on an arbitrary Hilbert space. If (E) and (F) have the same moments for every affine function and for (g), then (E=F).

Equivalently,
[
S_g=\operatorname{span}_{\mathbb C}(A(K)\cup{g})
]
is hyperrigid in (C(K)), without assuming that the acting Hilbert space is separable and without finite-rank, smoothness, or atomicity assumptions.

The tuple-reduction corollary is also fully established: equality under compression for (g), together with commuting compressed coordinates, forces the compression projection to reduce the whole commuting self-adjoint tuple.

# Responsible-release verdict

**HOLD RELEASE.**

The mathematical contribution is ready for specialist human review. The present file is not ready for public deposit or journal submission because its provenance section makes concrete claims not supported by the cited repository.

Minimum release repairs:

1. Delete or accurately rewrite the “final audit passed” sentence.
2. Delete the claimed Aristotle outcome unless the complete returned archive is preserved, hashed, independently built, and audited for `sorry`, `admit`, new axioms, and unsafe escapes.
3. Commit the exact revised TeX with hash `aa3c3b…`, regenerate all manifests, and preserve this fresh referee report.
4. Remove “released” until the repository or an immutable archive is genuinely public.
5. Resolve authorship and human-contribution language and approve the final AI disclosure.
6. Add standard citations for the probability-kernel measurability/Fubini step and, preferably, the POVM–UCP correspondence.
7. Preserve any final PDF and visually inspect it before release.

**Final classification:**

* **Mathematics:** PASS.
* **Every numbered result:** PASS.
* **Literature-scope comparisons:** PASS, with minor wording refinement for spectrahedra.
* **Verification/provenance disclosures:** contain FAIL-level factual claims.
* **Submission as a whole:** **REPAIRABLE**.
* **Responsible public release now:** **NO**.

[1]: https://arxiv.org/abs/2411.11709 "https://arxiv.org/abs/2411.11709"
[2]: https://arxiv.org/html/2405.20814 "https://arxiv.org/html/2405.20814"
[3]: https://arxiv.org/abs/1812.08574 "https://arxiv.org/abs/1812.08574"
[4]: https://arxiv.org/html/2601.16075 "https://arxiv.org/html/2601.16075"
