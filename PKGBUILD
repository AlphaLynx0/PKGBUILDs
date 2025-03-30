# Maintainer: AlphaLynx <alphalynx@protonmail.com>

pkgname=archivemount-ng
pkgver=1a
pkgrel=1
pkgdesc="FUSE based filesystem for mounting compressed archives (new upstream)"
arch=('x86_64')
url="https://git.sr.ht/~nabijaczleweli/$pkgname"
license=('0BSD AND LGPL-2.0-or-later')
depends=('fuse3' 'glibc' 'gcc-libs' 'libarchive')
makedepends=('git')
source=("$pkgname-$pkgver.tar.gz::https://git.sr.ht/~nabijaczleweli/$pkgname/archive/$pkgver.tar.gz"
        "$pkgname-$pkgver.tar.gz.asc::https://git.sr.ht/~nabijaczleweli/$pkgname/archive/$pkgver.tar.gz.asc")
sha256sums=('SKIP' 'SKIP')
validpgpkeys=('7D69474E84028C5CC0C44163BCFD0B018D2658F1')
provides=(archivemount)
conflicts=(archivemount)

build() {
    cd "$pkgname-$pkgver"
    make
}

check() {
    cd "$pkgname-$pkgver"
    make -k check
}

package() {
    cd "$pkgname-$pkgver"
    install -Dm644 "LICENSES/0BSD.txt" "$pkgdir/usr/share/licenses/$pkgname/0BSD.txt"
    env PREFIX=/usr make DESTDIR="$pkgdir/" install
}
