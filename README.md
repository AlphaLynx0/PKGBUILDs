# PKGBUILDs

This repository contains a collection of PKGBUILDs for Arch Linux. Most are for packages that I maintain or co-maintain on the Arch User Repository (AUR). Some may be personal packages I've created for my own use.

## Installation

These packages can be installed with [these steps](https://wiki.archlinux.org/title/Arch_User_Repository#Installing_and_upgrading_packages).

## Repository Structure

Each package is located in a subdirectory within this repository. For example:
- `foo/` – Contains the PKGBUILD and related file(s) for package *foo*.
- `bar/` – Contains the PKGBUILD and related file(s) for package *bar*.

This repository uses Git subtrees to store external repositories into the package subdirectories.

## Checking for New Versions

To check all of the applicable packages for new versions:
```bash
cat version-check | xargs pkgctl version check -v
```

If a package is out-of-date, please let me know through the "Flag package out-of-date" action on the AUR package page.

## Contributing

I try my best to always follow all of the [Arch package guidelines](https://wiki.archlinux.org/title/Arch_package_guidelines). If you think I've missed something, or have suggestions for my packages, feel free to submit a PR, create an issue here, comment on the AUR page, or [email me](mailto:alphalynx@alphalynx.dev).

## Licence

Package sources I create and my contributions to existing packages are licensed under the Zero-Clause BSD License (0BSD). To see if a particular package source is under this license, check the package directory for a LICENSE file. Package directories that are missing a LICENSE file are not subject to the terms of this package (likely because I have not yet rewritten the source that came from previous contributors).

Note: This license covers only changes I've made, **not** work by other contributors, and applies only to packaging files (PKGBUILD, patches, etc.), **not** the upstream software being packaged.
