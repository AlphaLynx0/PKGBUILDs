# PKGBUILDs

This repository contains a collection of PKGBUILDs for Arch Linux. Most are for packages that I maintain or co-maintain on the Arch User Repository (AUR). A few are personal modifications of existing AUR packages or custom packages I've created for my own use.

## Installation

These packages can be installed with [these steps](https://wiki.archlinux.org/title/Arch_User_Repository#Installing_and_upgrading_packages).

## Repository Structure

Each package is located in its own subdirectory within this repository. For example:
- `foo/` – Contains the PKGBUILD and related file(s) for package *foo*.
- `bar/` – Contains the PKGBUILD and related file(s) for package *bar*.

This repository uses Git subtrees to store external repositories into the package subdirectories.

Subtrees are added to this repo with: `git subtree add --prefix=<package> https://aur.archlinux.org/<package>.git master --squash`

Changes are pulled into this repo with: `git subtree pull --prefix=<package> https://aur.archlinux.org/<package>.git master`

## Contributing

I make sure the packages I maintain or co-maintain on the AUR comply with the [Arch Packaging Guidelines](https://wiki.archlinux.org/title/Arch_package_guidelines). But if you think I’ve missed something, feel free to submit a PR, create an issue here, or [email me](mailto:alphalynx@protonmail.com).

## Licence

Per [Arch Linux RFC 40](https://rfc.archlinux.page/0040-license-package-sources/), most packages are licensed under the BSD Zero Clause License, with a LICENSE file containing the full 0BSD text in the package's directory. If a package directory does not contain that LICENSE file, it is not under the terms of this license.
