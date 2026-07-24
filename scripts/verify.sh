#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

shasum -a 256 -c SOURCE_MANIFEST.sha256
shasum -a 256 -c CHECKSUMS.sha256
python3 scripts/tex_sanity.py

if find . -path './.git' -prune -o -path './output' -prune -o \
    -type f -name '*.lean' -print | grep -q .; then
  if rg -n '\b(sorry|admit)\b|^[[:space:]]*(axiom|constant)\b|\bunsafe\b' \
      --glob '*.lean' --glob '!.lake/**' .; then
    echo "Forbidden Lean proof escape found." >&2
    exit 1
  fi
fi

if [[ "${REQUIRE_PDF:-0}" == "1" ]]; then
  scripts/compile_pdf.sh
elif command -v latexmk >/dev/null 2>&1 ||
     command -v pdflatex >/dev/null 2>&1 ||
     command -v tectonic >/dev/null 2>&1; then
  scripts/compile_pdf.sh
else
  echo "PDF compilation: SKIPPED (no local TeX engine; set REQUIRE_PDF=1 to make this fatal)"
fi

echo "Repository verification: PASS"
