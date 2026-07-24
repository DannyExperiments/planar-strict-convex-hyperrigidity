# Aristotle submission receipt

## Request

- Platform: Aristotle by Harmonic
- Account shown by platform: Daniel Cabezas
- Request ID: `6f13344c-d5b5-4805-ab3d-e779ff868afb`
- Request URL:
  `https://aristotle.harmonic.fun/dashboard/requests/6f13344c-d5b5-4805-ab3d-e779ff868afb`
- Platform start time: 2026-07-24 07:23 Asia/Bangkok
- Status observed immediately after submission: `Queued`
- Completion observed: 2026-07-24 07:54 Asia/Bangkok
- Platform outcome: `Completed`
- Returned run directory: `8e958d4d-ae3d-49b7-af01-3920de7626e3_aristotle`

## Exact submitted material

The request field contained, in order:

1. the complete contents of
   `formalization/ARISTOTLE_EXACT_SCOPE_PROMPT.txt`;
2. the literal separator
   `===== ATTACHED MANUSCRIPT (VERBATIM TEX) =====`;
3. the complete contents of
   `paper/planar_strict_convex_hyperrigidity.tex`.

The combined request contained 27,810 characters.

SHA-256:

```text
8e198b58c8b5c8568b8ac6759888cedad8a713bcdd54935bfa31465b32b71095  formalization/ARISTOTLE_EXACT_SCOPE_PROMPT.txt
8bf933d2ff955c669b455693102c02d0a08f3326cedd39e57c421d4836edc5e7  paper/planar_strict_convex_hyperrigidity.tex
```

The files were transmitted as verbatim inline request text because the
Chrome extension's local-file upload permission was disabled. The platform
displayed the exact instruction and manuscript text before submission.

## Evidentiary boundary

This receipt establishes only that Aristotle accepted and queued the exact
request. It is not evidence that any Lean declaration compiled or that any
part of the manuscript theorem has been formally verified. Any returned
archive must be preserved, hashed, built independently, and checked for
scope changes and forbidden proof escapes before its mathematical status is
classified.

## Returned-artifact status

The returned archive is preserved at
`formalization/6f13344c-d5b5-4805-ab3d-e779ff868afb-aristotle.tar.gz`,
with extracted sources under `formalization/aristotle_return_v1/`.

SHA-256:

```text
1887d86be11c597cfcbc604346b3efb55260cb3bbecbf69720443c5210b6bc1f  formalization/6f13344c-d5b5-4805-ab3d-e779ff868afb-aristotle.tar.gz
```

The return is an exact-scope feasibility result, not a formal proof of the
manuscript. `RequestProject/POVM.lean` contains sorry-free foundational
POVM/PVM results. The exact main theorem and operator corollaries are stated
in `RequestProject/Statements.lean`, but `thm_main`, `cor_tuple`, and
`cor_square` each remain proved only by `sorry`.

The returned project is pinned to Lean and mathlib `v4.28.0`, rather than the
requested `v4.30.0`. Aristotle reported a successful build under that pinned
toolchain. No independent local build is claimed here until the exact returned
toolchain and dependencies are installed and replayed.
