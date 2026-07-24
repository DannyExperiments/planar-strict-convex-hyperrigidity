#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

bundle_name="final_release_evidence_v4"
bundle_root="$repo_root/release/$bundle_name"
archive="$repo_root/release/planar-strict-convex-hyperrigidity-final-evidence-v4.zip"
build_input="$repo_root/output/release_build_v3"

for required in \
  "$build_input/BUILD_RECORD.env" \
  "$build_input/BUILD_RECORD.md" \
  "$build_input/CI_JOB_LOG.txt" \
  "$build_input/planar_strict_convex_hyperrigidity.pdf"; do
  test -f "$required"
done

# shellcheck disable=SC1091
source "$build_input/BUILD_RECORD.env"
test -f "$build_input/$ARTIFACT_FILE"

rm -rf "$bundle_root"
rm -f "$archive"
mkdir -p "$bundle_root"

for directory in source audits literature formalization declarations scripts; do
  cp -R "$directory" "$bundle_root/$directory"
done
mkdir -p "$bundle_root/paper" "$bundle_root/.github/workflows" "$bundle_root/build"
cp paper/planar_strict_convex_hyperrigidity.tex "$bundle_root/paper/"
cp .github/workflows/paper.yml "$bundle_root/.github/workflows/"

for metadata in \
  README.md \
  AI_DISCLOSURE.md \
  CLAIMS_MATRIX.md \
  PROVENANCE.md \
  PUBLICATION_CHECKLIST.md \
  SOURCE_MANIFEST.sha256; do
  cp "$metadata" "$bundle_root/$metadata"
done

cp release/EVIDENCE_MANIFEST.md "$bundle_root/BUNDLE_MANIFEST.md"
cp release/CORRECTIVE_REPAIRS.md "$bundle_root/CORRECTIVE_REPAIRS.md"
cp scripts/verify_release_bundle.sh "$bundle_root/VERIFY_BUNDLE.sh"
cp "$build_input/"* "$bundle_root/build/"

diff -u \
  audits/AUDITED_TEX_e5a8c072.tex \
  paper/planar_strict_convex_hyperrigidity.tex \
  >"$bundle_root/AUDITED_TO_REVISED_TEX.patch" || true
test -s "$bundle_root/AUDITED_TO_REVISED_TEX.patch"

(
  cd "$bundle_root"
  find . -type f ! -name ROOT_SHA256SUMS -print |
    sed 's#^\./##' |
    LC_ALL=C sort |
    while IFS= read -r path; do
      shasum -a 256 "$path"
    done >ROOT_SHA256SUMS
)

(
  cd "$repo_root/release"
  COPYFILE_DISABLE=1 zip -q -r "$(basename "$archive")" "$bundle_name"
)

bash scripts/verify_release_bundle.sh "$archive"

# Reproduce the exact no-argument command given to the auditor from a fresh
# extraction. This guards against path drift when the repository verifier is
# copied from scripts/ to the bundle root.
noarg_extract="$(mktemp -d)"
trap 'rm -rf "$noarg_extract"' EXIT
unzip -q "$archive" -d "$noarg_extract"
noarg_top="$noarg_extract/$bundle_name"
(
  cd "$noarg_top"
  bash VERIFY_BUNDLE.sh
)

echo "Built $archive"
