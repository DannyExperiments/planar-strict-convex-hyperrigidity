# Paper build

Source:

`planar_strict_convex_hyperrigidity.tex`

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

The manuscript identifies DannyExperiments as the conventional author and
human curator, and explicitly credits GPT-5.6 Pro and Codex for their stated
roles. Keep the paper, `AI_DISCLOSURE.md`, and `PROVENANCE.md` synchronized if
that metadata changes.
