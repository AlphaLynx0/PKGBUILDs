#!/usr/bin/env bash
set -euo pipefail

subtrees=(
    aicommits
    aircrack-ng-git
    archivemount-ng
    box
    license
    opencommit
    openvpn-update-systemd-resolved
    purrcrypt
    pyactivate
    python-pycpio
    python-zenlib
    sshp
    sshp-git
    ugrd
    ugrd-git
)

for pkg in "${subtrees[@]}"; do
    echo "Pulling subtree '$pkg'..."
    git subtree pull --prefix="$pkg" "https://aur.archlinux.org/$pkg.git" master --squash
done
