#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

shasum -a 256 -c SOURCE_MANIFEST.sha256
shasum -a 256 -c CHECKSUMS.sha256
python3 scripts/tex_sanity.py

aristotle_root="formalization/aristotle_return_v1/RequestProject"
if [[ -d "$aristotle_root" ]]; then
  if rg -n '\b(sorry|admit)\b|^[[:space:]]*(axiom|constant)\b|\bunsafe\b' \
      "$aristotle_root/POVM.lean" "$aristotle_root/Main.lean"; then
    echo "Unexpected Lean proof escape in the claimed foundational layer." >&2
    exit 1
  fi

  if rg -n '\b(admit|unsafe)\b|^[[:space:]]*(axiom|constant)\b' \
      "$aristotle_root/Statements.lean"; then
    echo "Unexpected non-sorry Lean escape in the exact-scope statements." >&2
    exit 1
  fi

  sorry_count="$(
    rg -c '^[[:space:]]*sorry[[:space:]]*$' \
      "$aristotle_root/Statements.lean"
  )"
  if [[ "$sorry_count" != "3" ]]; then
    echo "Expected exactly three disclosed theorem-level sorries; found $sorry_count." >&2
    exit 1
  fi
  echo "Lean status: three disclosed headline proofs remain unformalized."
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
