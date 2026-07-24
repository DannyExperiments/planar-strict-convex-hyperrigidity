#!/usr/bin/env bash
set -euo pipefail

script_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

verify_directory() {
  local bundle_root="$1"
  bundle_root="$(cd "$bundle_root" && pwd)"

  test -f "$bundle_root/ROOT_SHA256SUMS"
  test -f "$bundle_root/SOURCE_MANIFEST.sha256"
  test -f "$bundle_root/build/BUILD_RECORD.env"

  (
    cd "$bundle_root"

    listed_files="$(mktemp)"
    actual_files="$(mktemp)"
    artifact_tmp="$(mktemp -d)"
    trap 'rm -f "$listed_files" "$actual_files"; rm -rf "$artifact_tmp"' EXIT

    awk '{print $2}' ROOT_SHA256SUMS | LC_ALL=C sort >"$listed_files"
    find . -type f ! -name ROOT_SHA256SUMS -print |
      sed 's#^\./##' |
      LC_ALL=C sort >"$actual_files"
    diff -u "$listed_files" "$actual_files"

    shasum -a 256 -c ROOT_SHA256SUMS
    shasum -a 256 -c SOURCE_MANIFEST.sha256
    python3 scripts/tex_sanity.py .
    python3 scripts/verify_formalization_scope.py .
    python3 scripts/verify_release_claims.py .

    # shellcheck disable=SC1091
    source build/BUILD_RECORD.env
    test "$(shasum -a 256 paper/planar_strict_convex_hyperrigidity.tex | awk '{print $1}')" = "$TEX_SHA256"
    test "$(shasum -a 256 "build/$ARTIFACT_FILE" | awk '{print $1}')" = "$ARTIFACT_ZIP_SHA256"
    test "$(shasum -a 256 build/planar_strict_convex_hyperrigidity.pdf | awk '{print $1}')" = "$PDF_SHA256"
    test "$(shasum -a 256 build/CI_JOB_LOG.txt | awk '{print $1}')" = "$CI_LOG_SHA256"

    unzip -q "build/$ARTIFACT_FILE" -d "$artifact_tmp"
    test "$(find "$artifact_tmp" -type f | wc -l | tr -d ' ')" = "1"
    cmp \
      "$(find "$artifact_tmp" -type f -print -quit)" \
      build/planar_strict_convex_hyperrigidity.pdf

    if command -v pdfinfo >/dev/null 2>&1; then
      test "$(pdfinfo build/planar_strict_convex_hyperrigidity.pdf | awk '/^Pages:/ {print $2}')" = "$PDF_PAGES"
      test "$(pdfinfo build/planar_strict_convex_hyperrigidity.pdf | awk '/^Encrypted:/ {print $2}')" = "no"
    fi
  )
}

if [[ "$#" -eq 0 ]]; then
  verify_directory "$script_root"
elif [[ "$#" -eq 1 && -d "$1" ]]; then
  verify_directory "$1"
elif [[ "$#" -eq 1 && -f "$1" ]]; then
  archive="$(cd "$(dirname "$1")" && pwd)/$(basename "$1")"
  unzip -t "$archive"
  extract_root="$(mktemp -d)"
  trap 'rm -rf "$extract_root"' EXIT
  unzip -q "$archive" -d "$extract_root"
  top_count="$(find "$extract_root" -mindepth 1 -maxdepth 1 -print | wc -l | tr -d ' ')"
  top_entry="$(find "$extract_root" -mindepth 1 -maxdepth 1 -print -quit)"
  if [[ "$top_count" -ne 1 || ! -d "$top_entry" ]]; then
    echo "release-bundle: FAIL: archive must contain exactly one top-level directory" >&2
    exit 1
  fi
  verify_directory "$top_entry"
else
  echo "Usage: $0 [bundle-directory-or-zip]" >&2
  exit 2
fi

echo "release-bundle: PASS"
