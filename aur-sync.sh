#!/usr/bin/env bash
set -euo pipefail

# Define all available subtrees
all_subtrees=(
    adguardhome-bin
    adguardhome-git
    aicommits
    aircrack-ng-git
    antigravity
    archivemount-ng
    archivemount-ng-git
    astroterm-bin
    box
    jan-appimage
    kiro-cli
    kiro-ide
    kitty-img
    license
    lzbench
    lzbench-bin
    opencommit
    openvpn-update-systemd-resolved
    proton-authenticator
    proton-authenticator-bin
    proton-authenticator-git
    proton-mail
    proton-mail-bin
    proton-mail-git
    proton-pass-git
    purrcrypt
    python-borgstore
    python-pycpio
    python-zenlib
    rusticon
    rusticon-bin
    sshp
    sshp-git
    ugrd
    ugrd-git
    vet
    vet-git
    wootility
    xpad-dkms-git
)

show_usage() {
    echo "Usage: $0 <pull|push> <pkgbase1> [pkgbase2 ...]"
    echo ""
    echo "Sync specific packages with AUR using git subtree."
    echo ""
    echo "Commands:"
    echo "  pull    Pull updates from AUR"
    echo "  push    Push local changes to AUR"
    echo ""
    echo "Available packages:"
    printf "  %s\n" "${all_subtrees[@]}"
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

pull_subtree() {
    local pkgbase="$1"
    echo "Pulling subtree: $pkgbase"
    GIT_EDITOR=true git subtree pull --prefix="$pkgbase" "https://aur.archlinux.org/$pkgbase.git" master --squash
}

push_subtree() {
    local pkgbase="$1"
    echo "Pushing subtree: $pkgbase"

    # Split the subtree into a temporary branch
    local temp_branch="${pkgbase}-aur-push-$$"
    git subtree split --prefix="$pkgbase" -b "$temp_branch"

    # Push to AUR
    git push "ssh://aur@aur.archlinux.org/$pkgbase.git" "$temp_branch:master"

    # Clean up temporary branch
    git branch -D "$temp_branch"
}

# Check if no arguments provided
if [[ $# -lt 2 ]]; then
    show_usage
    exit 1
fi

# Parse command
command="$1"
shift

if [[ "$command" != "pull" && "$command" != "push" ]]; then
    echo "Error: Invalid command '$command'. Must be 'pull' or 'push'." >&2
    show_usage
    exit 1
fi

# Validate all packages
packages_to_sync=()
invalid_packages=()

for arg in "$@"; do
    if validate_package "$arg"; then
        packages_to_sync+=("$arg")
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

# Perform the sync operation
echo "${command^}ing ${#packages_to_sync[@]} package(s)..."
for pkgbase in "${packages_to_sync[@]}"; do
    if [[ "$command" == "pull" ]]; then
        pull_subtree "$pkgbase"
    else
        push_subtree "$pkgbase"
    fi
    sleep 0.1
done

echo "Done."
