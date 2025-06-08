#!/usr/bin/env bash
set -euo pipefail

# Directory containing one subdirectory per package (default: current dir)
PKGDIR="${1:-.}"

#
# Find all directories at depth=2 under PKGDIR that contain a PKGBUILD.
# Then, for each of those, check if a .nvchecker.toml also exists. If so,
# run 'pkgctl version check' inside it; otherwise, skip.
#
find "${PKGDIR}" -mindepth 2 -maxdepth 2 -type f -name PKGBUILD \
    | sed 's#/[^/]*$##' \
    | sort -u \
    | while read -r pkgpath; do
        pkgname=$(basename "$pkgpath")
        nvfile="${pkgpath}/.nvchecker.toml"

        # Only proceed if .nvchecker.toml exists
        if [[ -f "$nvfile" ]]; then
            (
                cd "$pkgpath"

                # Run pkgctl version check (pretty format by default)
                pkgctl version check --format pretty
            )
        fi
    done
