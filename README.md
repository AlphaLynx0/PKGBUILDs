# PKGBUILDs

This repository is a collection of PKGBUILD scripts I maintain/co-maintain on the Arch Linux User Repository (AUR).

## Installation

These packages can be installed with the following steps (official docs [here](https://wiki.archlinux.org/title/Arch_User_Repository#Installing_and_upgrading_packages)):
- Git clone the desired package (either clone this repo or `https://aur.archlinux.org/<package>.git`)
- Change to package directory: `cd <package>`
- Build the package: `makepkg -s`
- Install the package: `pacman -U package_name-version-architecture.pkg.tar.zst`

## Repository Structure

This repository uses Git subtrees to embed full external repositories into subdirectories.

Subtrees are added to this repo with: `git subtree add --prefix=<package> https://aur.archlinux.org/<package>.git master`

Changes are pulled into this repo with: `git subtree pull --prefix=<package> https://aur.archlinux.org/<package>.git master`

Each package is located in its own subdirectory within this repository. For example:
- `package1/` – Contains the PKGBUILD and related files for Package 1.
- `package2/` – Contains the PKGBUILD and related files for Package 2.

## Collaboration

I try to make sure these packages comply with all [Arch Packaging Guidelines](https://wiki.archlinux.org/title/Arch_package_guidelines). But if you think they could be improved in some way, feel free to comment on the respective AUR package, create an issue, submit a PR, or [email me](mailto:alphalynx@protonmail.com) a patch.

## Licence

Per Arch Linux [RFC 40](https://rfc.archlinux.page/0040-license-package-sources/), I choose to license most of these PKGBUILDs under the Zero-Clause BSD license (if the package is under this license it will have a copy of the license file in the package directory). Full text:
```
Copyright Arch Linux Contributors

Permission to use, copy, modify, and/or distribute this software for
any purpose with or without fee is hereby granted.

THE SOFTWARE IS PROVIDED “AS IS” AND THE AUTHOR DISCLAIMS ALL
WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES
OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE
FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY
DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN
AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT
OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.```
