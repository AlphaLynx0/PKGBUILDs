#!/usr/bin/env bash
set -euo pipefail

# Define all available subtrees
all_subtrees=(
    adguardhome-bin
    adguardhome-git
    aicommits
    aircrack-ng-git
    archivemount-ng
    archivemount-ng-git
    box
    jan-appimage
    kiro-bin
    kitty-img
    license
    opencommit
    openvpn-update-systemd-resolved
    proton-authenticator
    proton-authenticator-bin
    proton-authenticator-git
    proton-mail
    proton-mail-bin
    proton-mail-git
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

show_usage() {
    echo "Usage: $0 [all|pkgbase1 pkgbase2 ...]"
    echo ""
    echo "Examples:"
    echo "  $0 all                       # Pull all subtrees"
    echo "  $0 python-borgstore sshp ... # Pull multiple specific packages"
    echo ""
    echo "Available packages:"
    printf "  %s\n" "${all_subtrees[@]}"
}

pull_subtree() {
    local pkgbase="$1"
    echo "Pulling subtree: $pkgbase"
    GIT_EDITOR=true git subtree pull --prefix="$pkgbase" "https://aur.archlinux.org/$pkgbase.git" master --squash
    sleep 0.1
}

validate_package() {
    local pkg="$1"
    for valid_pkg in "${all_subtrees[@]}"; do
        if [[ "$pkg" == "$valid_pkg" ]]; then
            return 0
        fi
    done
    return 1
}

# Check if no arguments provided
if [[ $# -eq 0 ]]; then
    show_usage
    exit 1
fi

# Handle "all" argument
if [[ $# -eq 1 && "$1" == "all" ]]; then
    echo "Pulling all subtrees..."
    for pkgbase in "${all_subtrees[@]}"; do
        pull_subtree "$pkgbase"
    done
    exit 0
fi

# Handle specific packages
subtrees_to_pull=()
invalid_packages=()

for arg in "$@"; do
    if validate_package "$arg"; then
        subtrees_to_pull+=("$arg")
    else
        invalid_packages+=("$arg")
    fi
done

# Report invalid packages
if [[ ${#invalid_packages[@]} -gt 0 ]]; then
    echo "Error: Invalid package(s): ${invalid_packages[*]}" >&2
    echo "Run '$0' without arguments to see available packages." >&2
    exit 1
fi

# Pull the specified subtrees
echo "Pulling ${#subtrees_to_pull[@]} subtree(s)..."
for pkgbase in "${subtrees_to_pull[@]}"; do
    pull_subtree "$pkgbase"
done

echo "Done."
