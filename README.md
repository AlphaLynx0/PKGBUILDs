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

## License

Packages in this repository are implementing [Arch Linux RFC 0052](https://rfc.archlinux.page/0052-reuse/) and the [REUSE Specification 3.3](https://reuse.software/spec-3.3/). This is an ongoing effort, and not all packages may fully follow this yet.

**Package sources** (PKGBUILDs, install scripts, and other files I create) are licensed under the Zero-Clause BSD License (0BSD) with copyright attributed to "Arch Linux contributors". License texts are stored in the `LICENSES/` directory, and licensing information is declared in `REUSE.toml` files.

**Files from upstream projects** (such as .desktop files, patches, or other assets copied from upstream) retain their original upstream license and copyright. These are also declared in the respective `REUSE.toml` files.

**Upstream software** being packaged maintains its own license, which is not affected by the packaging license.
