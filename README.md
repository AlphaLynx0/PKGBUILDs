# PKGBUILDs

This repository is a collection of PKGBUILD scripts I maintain on the Arch Linux User Repository (AUR).

## Installation

These packages can be installed with the following steps (official docs [here](https://wiki.archlinux.org/title/Arch_User_Repository#Installing_and_upgrading_packages)):
- Git clone the desired package (either clone this repo or `https://aur.archlinux.org/<package>.git`)
- Change to package directory: `cd <package>`
- Build the package: `makepkg -s`
- Install the package: `pacman -U package_name-version-architecture.pkg.tar.zst`

## Repository Structure

This repository uses Git subtrees integration to embed full external repositories into subdirectories.

Subtrees are added to this repo with: `git subtree add --prefix=<package> https://aur.archlinux.org/<package>.git master`

Changes are pulled into this repo with: `git subtree pull --prefix=<package> https://aur.archlinux.org/<package>.git master`

Each package is located in its own subdirectory within this repository. For example:
- `package1/` – Contains the PKGBUILD and related files for Package 1.
- `package2/` – Contains the PKGBUILD and related files for Package 2.

## Collaboration

I try to make sure these packages comply with all [Arch Packaging Guidelines](https://wiki.archlinux.org/title/Arch_package_guidelines). But if you think they could be improved in some way, feel free to create an issue, submit a PR, or [email me](mailto:alphalynx@protonmail.com) a patch.

## Licence

Per Arch Linux [RFC 40](https://rfc.archlinux.page/0040-license-package-sources/), all of these PKGBUILDs are licensed under the Zero-Clause BSD license. Full text:
```
Binary files, as well as any files describing changes ("patches") to the software that is being built are excluded from this license.
They are provided under the license terms of the software they describe
changes for.

Any files containing a license notice are excluded from this license. They are provided under the license terms defined in their respective notices.

Copyright 2024 Arch Linux Contributors

Permission to use, copy, modify, and/or distribute this software for
any purpose with or without fee is hereby granted.

THE SOFTWARE IS PROVIDED “AS IS” AND THE AUTHOR DISCLAIMS ALL
WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES
OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE
FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY
DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN
AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT
OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
```