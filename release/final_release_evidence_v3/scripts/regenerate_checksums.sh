#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

manifest_tmp="$(mktemp)"
trap 'rm -f "$manifest_tmp"' EXIT

git ls-files --cached --others --exclude-standard |
  LC_ALL=C sort |
  while IFS= read -r path; do
    if [[ "$path" == "CHECKSUMS.sha256" ]]; then
      continue
    fi
    digest="$(shasum -a 256 "$path" | awk '{print $1}')"
    printf '%s  ./%s\n' "$digest" "$path"
  done >"$manifest_tmp"

mv "$manifest_tmp" CHECKSUMS.sha256
trap - EXIT
