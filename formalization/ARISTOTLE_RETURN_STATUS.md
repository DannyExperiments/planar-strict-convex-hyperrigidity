# Aristotle return status

## Verdict

The Aristotle run did **not** formalize the manuscript's main theorem or its
operator corollaries.

The returned project, after documentary scope correction, contains:

- a sorry-free foundational file, `aristotle_return_v1/RequestProject/POVM.lean`;
- a manuscript-scope statement `thm_main` in
  `aristotle_return_v1/RequestProject/Statements.lean`;
- two stronger ambient-space surrogates, `cor_tuple` and `cor_square`, whose
  compressed tuples and unital calculi act on the full Hilbert space rather
  than on `ran P`;
- three remaining proof escapes, one each in `thm_main`, `cor_tuple`, and
  `cor_square`;
- a detailed dependency and feasibility analysis in
  `aristotle_return_v1/GAP_REPORT.md`.

Therefore the correct formal status is:

| Item | Status |
| --- | --- |
| POVM/PVM foundational layer | Aristotle-reported compiling and sorry-free |
| Main planar POVM/PVM theorem | Scope matches manuscript; unformalized (`sorry`) |
| Tuple compression corollary | Ambient-space surrogate only; unformalized (`sorry`) |
| Square compression corollary | Ambient-space surrogate only; unformalized (`sorry`) |
| Hyperrigidity corollary | Not formalized |
| Independent local replay | Pending |

The returned archive uses Lean/mathlib `v4.28.0`, while the request asked for
`v4.30.0`. A successful Aristotle build is not being restated as an
independent local kernel check.

## Preserved files

- Original archive:
  `formalization/6f13344c-d5b5-4805-ab3d-e779ff868afb-aristotle.tar.gz`
- Extracted return with documentary scope corrections:
  `formalization/aristotle_return_v1/`
- Scope correction record:
  `formalization/ARISTOTLE_SCOPE_CORRECTION.md`
- Submission prompt:
  `formalization/ARISTOTLE_EXACT_SCOPE_PROMPT.txt`
- Submission and completion receipt:
  `formalization/ARISTOTLE_SUBMISSION_RECEIPT.md`

## Integrity

```text
1887d86be11c597cfcbc604346b3efb55260cb3bbecbf69720443c5210b6bc1f  formalization/6f13344c-d5b5-4805-ab3d-e779ff868afb-aristotle.tar.gz
```
