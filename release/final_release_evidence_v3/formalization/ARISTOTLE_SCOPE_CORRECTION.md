# Aristotle scope correction

## Status

The original returned archive is preserved byte-for-byte at:

`formalization/6f13344c-d5b5-4805-ab3d-e779ff868afb-aristotle.tar.gz`

Its SHA-256 is:

```text
1887d86be11c597cfcbc604346b3efb55260cb3bbecbf69720443c5210b6bc1f
```

The extracted tree under `formalization/aristotle_return_v1/` differs from
the archive only by documentary scope corrections in:

- `RequestProject/Statements.lean` comments;
- `ARISTOTLE_SUMMARY.md`;
- `GAP_REPORT.md`.

No Lean declaration, hypothesis, conclusion, or proof term was changed.
`POVM.lean`, `Main.lean`, `lakefile.toml`, `lean-toolchain`,
`lake-manifest.json`, and the Aristotle `README.md` remain byte-identical to
the original archive.

## Exact scope comparison

`thm_main` matches the manuscript's main POVM/PVM theorem: it quantifies over
an arbitrary Hilbert space, compact convex `K` of affine dimension at most
two, normalized POVM `E`, PVM `F`, and continuous strictly convex `g`, and
concludes equality of the operator-valued measures.

`cor_tuple` and `cor_square` do not exactly encode the manuscript's operator
corollaries. In the manuscript,

```text
H = ran P,
A_j = P T_j P |_H,
P g(T) P |_H = g(A),
```

so the compressed tuple and its functional calculus act on `H`.

In the Lean declarations,

```text
A j = P * T j * P
ΦA : JointCFC m K 𝒦 A
P * ΦT.Φ g * P = ΦA.Φ g,
```

so `A`, its unital calculus, and the equality all live on the full ambient
space `𝒦`. This imposes an additional condition on `ker P`; consequently the
two declarations are stronger ambient-space surrogates rather than exact
formalizations of the manuscript corollaries.

All three declarations remain explicit `sorry` declarations. No Lean
verification of the main theorem or either operator corollary is claimed.

## Historical-return boundary

The original archive's statements that all three declarations were faithful
and exact-scope are preserved only inside the immutable archive as historical
output. They are superseded by this correction and by the corrected comments
in the extracted tree.
