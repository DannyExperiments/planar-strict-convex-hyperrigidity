# Paper build

Source:

`planar_strict_convex_hyperrigidity.tex`

Readable in-app copy:

`READABLE_PREVIEW.md`

Regenerate the reading copy after changing the TeX:

```bash
../scripts/make_readable_preview.py
```

Local build:

```bash
../scripts/compile_pdf.sh
```

The build script removes any prior PDF before compilation. It accepts
`latexmk`, `pdflatex`, or `tectonic`, and exits with status 127 if none is
installed. The GitHub Actions workflow performs a fresh build and uploads
the resulting PDF as an artifact.

No author entry is present by design. Authorship and acknowledgements must be
settled explicitly before public submission.
