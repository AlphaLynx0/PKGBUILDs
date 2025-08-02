#!/usr/bin/env bash
set -euo pipefail

subtrees=(
    adguardhome-bin
    aicommits
    aircrack-ng-git
    archivemount-ng
    archivemount-ng-git
    box
    kiro-bin
    license
    opencommit
    openvpn-update-systemd-resolved
    proton-mail-bin
    purrcrypt
    python-borgstore
    python-pycpio
    python-zenlib
    sshp
    sshp-git
    ugrd
    ugrd-git
    vet
    vet-git
    wootility
)

for pkgbase in "${subtrees[@]}"; do
    GIT_EDITOR=true git subtree pull --prefix=$pkgbase https://aur.archlinux.org/$pkgbase.git master --squash
    sleep 0.25
done
