#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
paper_dir="$repo_root/paper"
tex_name="planar_strict_convex_hyperrigidity.tex"
pdf_name="planar_strict_convex_hyperrigidity.pdf"

cd "$paper_dir"
rm -f "$pdf_name"

if command -v latexmk >/dev/null 2>&1; then
  latexmk -pdf -interaction=nonstopmode -halt-on-error "$tex_name"
elif command -v pdflatex >/dev/null 2>&1; then
  pdflatex -interaction=nonstopmode -halt-on-error "$tex_name"
  pdflatex -interaction=nonstopmode -halt-on-error "$tex_name"
elif command -v tectonic >/dev/null 2>&1; then
  tectonic --keep-logs "$tex_name"
else
  echo "No TeX engine found (latexmk, pdflatex, or tectonic)." >&2
  exit 127
fi

test -s "$pdf_name"
echo "Compiled $paper_dir/$pdf_name"
