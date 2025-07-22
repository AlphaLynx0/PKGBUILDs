# PKGBUILDs

This repository contains a collection of PKGBUILDs for Arch Linux. Most are for packages that I maintain or co-maintain on the Arch User Repository (AUR). Some may be personal packages I've created for my own use.

## Installation

These packages can be installed with [these steps](https://wiki.archlinux.org/title/Arch_User_Repository#Installing_and_upgrading_packages).

## Repository Structure

Each package is located in its own subdirectory within this repository. For example:
- `foo/` – Contains the PKGBUILD and related file(s) for package *foo*.
- `bar/` – Contains the PKGBUILD and related file(s) for package *bar*.

This repository uses Git subtrees to store external repositories into the package subdirectories.

Subtrees are added to this repo with: `git subtree add --prefix=$PKGBASE https://aur.archlinux.org/$PKGBASE.git master --squash`

Changes are pulled into this repo with: `git subtree pull --prefix=<package> https://aur.archlinux.org/<package>.git master`

## Checking for New Versions

To check all of the applicable packages for new versions: `cat version-check | xargs pkgctl version check -v`

## Contributing

I try my best to always follow all of the [Arch package guidelines](https://wiki.archlinux.org/title/Arch_package_guidelines). If you think I've missed something, or have suggestions for my packages, feel free to submit a PR, create an issue here, comment on the AUR page, or [email me](mailto:AlphaLynx@protonmail.com).

## Licence

Package sources I have created and my contributions to existing packages are licensed under the Zero-Clause BSD License (0BSD). This covers only changes I've made, **not** existing work by other contributors, and applies only to packaging files (PKGBUILD, patches, etc.), **not** the upstream software being packaged.

Due to commit squashing, check the original AUR repository for each package to see what changes are actually mine.
