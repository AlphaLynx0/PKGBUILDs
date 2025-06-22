#!/usr/bin/env bash
set -euo pipefail

subtrees=(
    aircrack-ng-git
    archivemount-ng
    opencommit
    openvpn-update-systemd-resolved
    purrcrypt
    pyactivate
    sshp
    sshp-git
    ugrd-git
)

for pkg in "${subtrees[@]}"; do
    echo "Pulling subtree '$pkg'..."
    git subtree pull --prefix="$pkg" "https://aur.archlinux.org/$pkg.git" master --squash
done
