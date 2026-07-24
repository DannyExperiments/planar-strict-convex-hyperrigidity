# Paper build

Source:

`planar_strict_convex_hyperrigidity.tex`

Current PDF:

`planar_strict_convex_hyperrigidity.pdf`

The PDF is an eight-page A4 artifact freshly compiled by GitHub Actions from
the current TeX. Its SHA-256 is
`25af39242b0f0f93701cde5a73578f5d58b3a024350580c73168a011945d6466`.
It differs from the frozen v4 signed-off PDF only by removing the visible
title-page author line and moving the same attribution into the existing
verification-and-provenance section. The frozen signed-off PDF remains
preserved inside the immutable v4 evidence archive.

Readable in-app copy:

`READABLE_PREVIEW.md`

Regenerate the reading copy after changing the TeX:

```bash
python3 ../scripts/make_readable_preview.py
```

Local build:

```bash
bash ../scripts/compile_pdf.sh
```

The build script removes any prior PDF before compilation. It accepts
`latexmk`, `pdflatex`, or `tectonic`, and exits with status 127 if none is
installed. The GitHub Actions workflow performs a fresh build and uploads
the resulting PDF as an artifact.

As in the A211420 paper, the title page omits an author line.  The manuscript's
verification-and-provenance section identifies DannyExperiments as the human
curator and publisher and credits GPT-5.6 Pro and Codex for their stated
roles. Keep the paper, `AI_DISCLOSURE.md`, and `PROVENANCE.md` synchronized if
that metadata changes.
