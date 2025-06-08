# PKGBUILDs

This repository is a collection of PKGBUILDs for Arch Linux. Most of these are packages I maintain/co-maintain on the Arch User Repository (AUR).

## Installation

These packages can be installed with [these steps](https://wiki.archlinux.org/title/Arch_User_Repository#Installing_and_upgrading_packages).

## Repository Structure

Each package is located in its own subdirectory within this repository. For example:
- `foo/` – Contains the PKGBUILD and related file(s) for package *foo*.
- `bar/` – Contains the PKGBUILD and related file(s) for package *bar*.

This repository uses Git subtrees to store external repositories into the package subdirectories.

Subtrees are added to this repo with: `git subtree add --prefix=<package> https://aur.archlinux.org/<package>.git master`

Changes are pulled into this repo with: `git subtree pull --prefix=<package> https://aur.archlinux.org/<package>.git master`

## Contributing

I do my best to make sure these packages comply with all [Arch Packaging Guidelines](https://wiki.archlinux.org/title/Arch_package_guidelines). But if you think they could be improved in some way, feel free to submit a PR, create an issue here, comment on the respective AUR package, or [email me](mailto:alphalynx@protonmail.com).

## Licence

Per [Arch Linux RFC 40](https://rfc.archlinux.page/0040-license-package-sources/), most of these packages are licensed under the BSD Zero Clause License. Packages that are covered by this license include a LICENSE file containing the full 0BSD text in its directory.
