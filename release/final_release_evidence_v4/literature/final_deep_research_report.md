Prior Literature on Hyperrigidity of span(A(K), g) for Planar Compact Convex Sets
Executive summary
The exact claim you asked about appears to split sharply by affine dimension.

For affine dimension at most one, the claim is already covered by Brown’s 2016 theorem on strictly convex functions of a selfadjoint operator. After an affine identification of a nontrivial compact convex set with an interval [a,b], the operator system span(A(K), g) becomes span{1, x, g(x)}, and Brown’s strong convergence theorem plus its compression corollary give precisely the desired hyperrigidity and compression-rigidity statement. So in dimension one, the claim is not new. 

For genuine affine dimension two, I did not find any prior theorem that is equivalent to, or directly implies, the full statement

for every compact convex K with affdim(K) = 2 and every continuous strictly convex g on K, the function system span(A(K), g) is hyperrigid in C(K),

nor any prior theorem giving the equivalent POVM/PVM or compression-rigidity formulation for arbitrary continuous strictly convex g on arbitrary planar compact convex K, including diffuse spectra. The closest prior results are Scherer’s planar theorem for A(K) in C(ex(K)), Brown’s one-variable strict-convexity theorem, Davidson–Kennedy’s Choquet/dilation-order reduction, Kleski’s Type I rigidity theorem, and the Pietrzycki–Stochel one-generator results for special monomial systems on compact subsets of ℂ. None of these gives the exact planar span(A(K), g) ⊂ C(K) statement for arbitrary continuous strictly convex g. 

The strongest evidence that the two-dimensional claim is genuinely new is conceptual, not merely bibliographic. Existing commutative hyperrigidity results in higher dimension either

work only for A(K) and only in C(ex(K)), not in C(K), or
work only for very special generators in singly generated algebras, not for arbitrary continuous strictly convex perturbations g, or
reduce the problem to dilation-order maximality without supplying the missing theorem that a single arbitrary strictly convex g forces dilation maximality. 
My bottom-line assessment is therefore:

High confidence that the claim is already known in affine dimension ≤ 1.
Moderate-to-high confidence that the genuinely planar affdim(K)=2 statement, as formulated, does not appear in prior literature through July 2026 and is not implied by currently published primary results I could verify. 

Benchmark claim and what would count as a prior equivalent
Write the target claim as:

H(K,g): if K is compact convex with affdim(K) ≤ 2 and g ∈ C(K) is strictly convex, then span(A(K), g) is hyperrigid in C(K).

By Arveson’s hyperrigidity criterion, this is equivalent to saying that for every representation π : C(K) → B(H), any u.c.p. map agreeing with π on A(K) and on g must equal π on all of C(K). In the commutative POVM language used by Pietrzycki–Stochel, this is equivalent to saying that a POVM and a PVM agreeing on all affine moments and the g-moment must coincide. It is also equivalent to a compression-rigidity statement: if a compression agrees on affine functions and on g, then the compressed subspace must reduce the commuting normal tuple. 

A prior theorem would therefore count as covering your claim only if it handled all three of the following simultaneously:

arbitrary continuous strictly convex g;
arbitrary compact convex K of affine dimension ≤ 2;
fully operator-valued formulations, hence including diffuse spectral measures and diffuse POVMs, not merely atomic or finite-dimensional cases. 
The literature I found repeatedly misses at least one of these three requirements. Brown handles arbitrary strictly convex g, but only in one real variable. Scherer handles arbitrary planar K, but only for A(K) and only in C(ex(K)). Pietrzycki–Stochel handle diffuse spectra, but only for special monomial systems in singly generated commutative C*-algebras. Davidson–Kennedy and Kleski provide structural criteria, but not the missing strict-convexity theorem in two variables. 

Closest prior theorems
The table below records the main prior theorems I found that are genuinely relevant to H(K,g). In the “quoted statement” column, I give a short exact clause from the theorem statement and identify the theorem number; the surrounding explanation is paraphrased to avoid over-quoting copyrighted text.

Citation	Exact theorem statement quoted	Covers arbitrary g?	Covers arbitrary planar K?	Covers diffuse spectra?	Notes and limitations
Arveson, The noncommutative Choquet boundary II: hyperrigidity (2011), Thm. 1.5 / 9.4, Israel J. Math. 184, 349–385.	“f(φ(A)) = φ(f(A)) ⇒ φ(A^n)=φ(A)^n.” 
Yes, for real-valued continuous f on an interval, in the matrix-algebra setting. 
No. One-variable selfadjoint situation only. 
No. Matrix algebras only, so discrete/finite-dimensional. 
This is the finite-dimensional predecessor of Brown. It proves exact Jensen-rigidity for a single selfadjoint operator, not general planar convex sets.
Brown, Convergence of functions of self-adjoint operators and applications (2016), Thm. 2.1, Cor. 2.7, Prop. 2.9, Publ. Mat. 60(2), 551–564; arXiv:1410.6800.	Thm. 2.1 core clause: “then (H_i) converges strongly to H.” Cor. 2.7 core clause: “then M is invariant for H.” 
Yes, for every continuous strictly convex f on an interval. 
Only affdim ≤ 1. After affine identification, this covers intervals, not genuine planar sets. 
Yes. No atomicity assumption; the spectral measure of a selfadjoint operator may be diffuse. 
This does imply your claim in affine dimension 0 or 1. Brown also proves strict convexity/concavity is essential: if f is neither strictly convex nor strictly concave, compression equality need not force invariance. 
Davidson–Kennedy, Choquet order and hyperrigidity for function systems (2021), Thm. 7.6 and introductory criterion, Adv. Math. 385, 107774; arXiv:1608.02334.	Thm. 7.6 core clause: “µ is maximal in the dilation order” iff π_µ has UEP relative to A(K). Introductory criterion: “A(K) is hyperrigid relative to C(K) iff …” 
No. No g appears. 
In principle yes for A(K), but not for span(A(K),g). 
Yes. Measures and GNS representations are arbitrary. 
This is the structural framework one would want to use. But it does not prove that adding a single arbitrary strictly convex g forces dilation maximality.
Davidson–Kennedy, same paper, Thm. 9.2 / Ex. 9.1.	“µ ≺_c ν_t iff 0≤t≤3/4; but µ ≺_d ν_t iff 0≤t≤0.9.” 
No.	No. This is a 3-dimensional simplex counterexample. 
Yes.	Important negative result: classical convex-order maximality is strictly weaker than the operator-theoretic dilation order in general. This blocks a naive deduction from scalar Jensen equality to hyperrigidity.
Kleski, Korovkin-type properties for completely positive maps (2014), main theorem / Cor. 3.3, Illinois J. Math. 58(4), 1107–1116; arXiv:1310.7266.	Main theorem core clause: if all irreducibles are boundary reps, then every u.c.p. ψ : A→A'' fixing S fixes A. 
No. No arbitrary g. 
No direct planar theorem.	Yes. Codomain A'' allows diffuse measure theory. 
Strong Type I rigidity theorem, but still not the desired two-variable strict-convexity result.
Pietrzycki–Stochel, Hyperrigidity I: singly generated commutative C*-algebras (accepted 2026), Thms. 3.1, 4.1, 6.1, 10.3; arXiv:2405.20814.	Thm. 4.1 core clause: “M is the spectral measure of N” iff the prescribed monomial moments match. Thm. 6.1 gives compression rigidity for special generator sets. 
No. Only special monomial systems, not arbitrary continuous strictly convex g. 
Partial. Compact subsets of ℂ are planar, but the theorem is about singly generated algebras and monomials in one complex generator. 
Yes. Spectral/semispectral measures are arbitrary compactly supported ones. 
This is the closest operator-valued moment/PVM–POVM literature to your equivalence, but it still does not handle arbitrary strictly convex g on arbitrary planar convex sets.
Scherer, The Hyperrigidity Conjecture for compact convex sets in ℝ² (2024 preprint; later JFA 2026), Thm. 3.8.	“If K is compact and convex, then A(K) is hyperrigid.” 
No. No g; only A(K). 
Yes for all planar compact convex K. 
Yes. Consequence stated for arbitrary normal operators with spectrum in ex(K). 
This is the closest planar theorem. But it is a theorem about A(K) in C(ex(K)), not about span(A(K),g) in C(K).
Scherer, same paper, corollary after Thm. 3.8.	“the weak and strong operator topologies coincide” on normal operators with spectrum in ex(K). 
No.	Yes. 
Yes.	This is the planar Brown-type convergence consequence, but again only through A(K) and ex(K).
Scherer, The Hyperrigidity Conjecture for Spectrahedra (2026), Thm. 3.7, arXiv:2601.16075.	“Then A(K) is hyperrigid in C(ex(K)).” 
No.	Partial. Includes some planar convex sets, but only compact spectrahedra with closed extreme boundary. 
Yes. 
Extension of Scherer’s convex-geometric strategy to spectrahedra. Still not the arbitrary-g, arbitrary-planar-K, C(K) statement.
Brown, Prop. 2.9 negative result.	Core hypothesis clause: “If f is neither strictly convex nor strictly concave …” 
Negative. Shows strict convexity is essential in 1D. 
No, one-variable only.	Yes.	There exist H and a subspace M with f(pr(H))=pr(f(H)) but M not invariant. So any attempt to prove your claim must genuinely use strict convexity.
Pietrzycki–Stochel, Prop. 10.1 / Thm. 10.3 negative results.	Prop. 10.1 core clause: “the set G is not hyperrigid in C(X).” 
Negative for insufficient generator systems.	Partial. Examples live in planar compact subsets of ℂ. 
Yes. 
These counterexamples show that even on planar compact sets, weak moment matching on “natural” generator systems can fail to force strong convergence unless the generator system has the right nonlinear term.

Why the closest prior results still do not imply the exact claim
Brown already gives the full one-dimensional statement. If K is a point or a line segment, then after an affine change of variables A(K)=span{1,x} and any continuous strictly convex g on K gives the operator system span{1,x,g(x)}. Brown’s theorem and corollary are exactly the needed hyperrigidity and compression-rigidity statements, and they allow diffuse spectra. So the part of your claim with affdim(K)≤1 is old. 

The genuinely new question is affine dimension two. Scherer’s planar theorem proves hyperrigidity of A(K) for every compact convex planar K, but crucially in the quotient-like ambient algebra C(ex(K)), not in C(K). Since C(K) is strictly larger whenever K has nonempty interior, this does not by itself imply hyperrigidity of span(A(K),g) in C(K). Hyperrigidity does not automatically pass from C(ex(K)) to C(K) just by adjoining one extra continuous function. 

Davidson–Kennedy explain exactly where the missing step lies. For A(K), hyperrigidity in C(K) is equivalent to every boundary-supported measure being maximal in the dilation order, not merely in the ordinary Choquet order. Their 3-dimensional counterexample shows that these two orders differ in general. Your proposed theorem would amount to a new two-dimensional strict-convexity principle asserting that equality on affine moments and one arbitrary strictly convex g forces dilation-order maximality. I did not find such a theorem in Davidson–Kennedy or later citing/cited work. 

Pietrzycki–Stochel come even closer on the operator-theoretic side: they convert hyperrigidity into equivalences involving semispectral measures, weak/strong convergence of subnormal or normal operators, and compression-reduction theorems. But their results are formulated for special generator sets inside singly generated commutative C*-algebras, namely monomials in a complex generator, together with certain arithmetic/geometric conditions on the exponents and spectrum. Those theorems are powerful but still do not give arbitrary continuous strictly convex g on an arbitrary planar convex set. 

Kleski’s theorem is also insufficient. It proves a useful rigidity statement for Type I algebras when every irreducible representation is already boundary. But it is a criterion once boundary-representation information is known; it does not prove that an arbitrary strictly convex planar g creates that boundary behavior. Likewise, later negative papers by Bilich–Dor-On, Scherer’s finite-dimensional counterexample, and Clouâtre give obstructions to the general hyperrigidity conjecture, but none produces or implies your precise positive planar strict-convexity theorem. 

Proof sketches that clarify the gap
Brown’s one-variable proof mechanism is the right benchmark. In very compressed form: weak convergence of H_i to H together with weak convergence of f(H_i) to f(H) for a single strictly convex f forces strong convergence of the entire functional calculus; the compression corollary is then obtained by embedding the compression into a shift-type weak limit argument. This is exactly what makes span{1,x,f(x)} hyperrigid in the interval case. 

Scherer’s planar proof is fundamentally different. He does not adjoin an arbitrary strictly convex g. Instead, he proves that A(K) itself is hyperrigid in the planar case by exploiting the geometry of supporting lines obtained from the polar parametrization of the boundary, then showing that a u.c.p. map agreeing on affine functions must agree on suitable boundary projections. This is why Scherer’s result is astonishingly strong for A(K), but also why it does not obviously feed into the A(K)+g problem in C(K). 

There is also an important scalar-versus-operator gap. On the scalar level, given a positive linear map Φ:C(K)→C(K) fixing A(K) and g, strict convexity strongly suggests a Jensen-equality argument: evaluating at a point x gives a representing measure µ_x, and equality of g(x) with ∫g dµ_x should force µ_x=δ_x. That classical idea is plausible and likely easy. But hyperrigidity is stronger: one must control operator-valued u.c.p. maps, equivalently POVMs and compressions. Davidson–Kennedy’s distinction between Choquet order and dilation order is exactly the warning that scalar Jensen equality does not automatically upgrade to the operator-valued conclusion. The missing literature step is therefore a genuinely noncommutative Jensen-equality theorem for arbitrary continuous strictly convex g on planar compact convex sets. I did not find one. 

mermaid
Copy
flowchart TD
    A[Brown 2016\nstrictly convex on interval] --> B[affdim ≤ 1 case of H(K,g)]
    C[Scherer 2024/2026\nA(K) hyperrigid in C(ex K) for planar K] --> D[planar A(K) control on extreme boundary]
    E[Davidson–Kennedy 2021\nhyperrigidity ⇔ dilation-order maximality] --> F[structural reduction]
    G[Pietrzycki–Stochel 2024/2026\nmoment and compression rigidity for monomial systems] --> H[special singly-generated planar cases]
    D --> I[not enough for span(A(K),g) in C(K)]
    F --> I
    H --> I
    I --> J[missing theorem:
    arbitrary strictly convex g forces dilation maximality / POVM=PVM]
The negative results sharpen that diagnosis. Brown’s Prop. 2.9 shows strict convexity is indispensable even in one variable. Davidson–Kennedy’s Example 9.1 shows classical convex-order maximality is not enough in general. Pietrzycki–Stochel’s counterexamples show that on planar compact subsets of ℂ, seemingly natural generator systems can fail to be hyperrigid unless the nonlinear term has the right structural form. All three point to the same conclusion: if your theorem is true, it is doing something genuinely stronger than what the current literature packages into existing general results. 

Final conclusion
I did not find any prior theorem, through July 2026, that is equivalent to or directly implies the exact claim

for every compact convex K with affdim(K)≤2 and every continuous strictly convex g on K, the function system span(A(K),g) is hyperrigid in C(K),

together with its equivalent POVM/PVM and compression-rigidity formulations, in full generality and for diffuse spectra. 

What is in the literature is this:

affine dimension ≤1: already known, essentially by Arveson in finite dimensions and Brown in general infinite dimensions; here your claim is not new. 
affine dimension =2: closest known theorems fall short. Scherer proves the planar A(K) theorem in C(ex(K)); Davidson–Kennedy give the correct structural criterion in terms of dilation order; Pietrzycki–Stochel prove analogous moment/compression results for special single-generator systems; none of these covers arbitrary continuous strictly convex g in C(K). 
So my research conclusion is:

The claim appears not to be present in prior literature in its genuinely planar form, is not implied by currently known general theorems, and therefore seems new. The novelty is concentrated in the case affdim(K)=2; the one-dimensional part is already subsumed by Brown. Confidence on this final assessment is moderate to high. 