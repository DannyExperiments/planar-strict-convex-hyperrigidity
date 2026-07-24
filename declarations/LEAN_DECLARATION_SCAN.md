# Lean declaration scan

This is a repository-side static scan of the documentary-corrected extracted
Aristotle project. It is not an independent replay of `lake build`.

## Pinned toolchain

```text
leanprover/lean4:v4.28.0
```

The returned `lakefile.toml` pins Mathlib `v4.28.0`.

## Foundational files

The repository scan for `sorry`, `admit`, `unsafe`, new `axiom`, or new
`constant` in:

```text
formalization/aristotle_return_v1/RequestProject/POVM.lean
formalization/aristotle_return_v1/RequestProject/Main.lean
```

returns no matches.

## Headline declarations and exact scope

`RequestProject/Statements.lean` contains:

```text
55:theorem thm_main
64:  sorry
111:theorem cor_tuple
127:  sorry
144:theorem cor_square
159:  sorry
```

`thm_main` matches the manuscript's main theorem. `cor_tuple` and
`cor_square` are stronger ambient-space surrogates: the compressed tuple and
its unital functional calculus act on the full Hilbert space rather than on
`ran P`. They are not exact formulations of the manuscript operator
corollaries.

The scan for `admit`, `unsafe`, new `axiom`, or new `constant` in
`Statements.lean` returns no matches. The file contains exactly three
standalone `sorry` proof gaps. Therefore the project does not formally verify
the manuscript theorem or either operator corollary.

## Archive boundary

The unmodified original archive is:

```text
1887d86be11c597cfcbc604346b3efb55260cb3bbecbf69720443c5210b6bc1f  formalization/6f13344c-d5b5-4805-ab3d-e779ff868afb-aristotle.tar.gz
```

`scripts/verify_formalization_scope.py` verifies that the current extracted
Lean code is identical to the original after removing comments and that all
non-documentary project files remain byte-identical. The scope correction is
documented in `formalization/ARISTOTLE_SCOPE_CORRECTION.md`.
