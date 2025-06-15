# Maintainer: AlphaLynx <alphalynx@protonmail.com>

pkgname=archivemount-ng
pkgver=1b
pkgrel=3
pkgdesc="FUSE based filesystem for mounting compressed archives (new upstream)"
arch=('x86_64')
url="https://git.sr.ht/~nabijaczleweli/$pkgname"
license=('0BSD AND LGPL-2.0-or-later')
depends=('fuse3' 'glibc' 'gcc-libs' 'libarchive')
source=("$pkgname-$pkgver.tar.gz::$url/archive/$pkgver.tar.gz"
        "$pkgname-$pkgver.tar.gz.asc::$url/archive/$pkgver.tar.gz.asc")
b2sums=('72f35555969fc2371bece14924d5c58775b4b75cd3786005d4c42079cad696e682919be5fe1bf7fc66d22731ba8dd3d0ac9fcb9954201689af5bfc60d0dbe717'
        'SKIP')
validpgpkeys=('7D69474E84028C5CC0C44163BCFD0B018D2658F1') # nabijaczleweli <nabijaczleweli@nabijaczleweli.xyz>
provides=(archivemount)
conflicts=(archivemount)

build() {
    cd "$pkgname-$pkgver"
    # Override MANUAL_DATE to the last-commit timestamp of archivemount.1.in
    # since tarball is not git repo
    make MANUAL_DATE="$(date -d @1718577439 '+%B %e, %Y')" VERSION="$pkgver"
}

check() {
    cd "$pkgname-$pkgver"
    make -k check
}

package() {
    cd "$pkgname-$pkgver"
    install -Dm644 "LICENSES/0BSD.txt" "$pkgdir/usr/share/licenses/$pkgname/0BSD.txt"
    install -Dm644 "LICENSES/LGPL-2.0-or-later.txt" "$pkgdir/usr/share/licenses/$pkgname/LGPL-2.0-or-later.txt"
    make DESTDIR="$pkgdir/" PREFIX="usr" install
}

# vim: set ts=4 sw=4 sts=4 et:
