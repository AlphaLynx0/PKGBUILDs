# Maintainer: AlphaLynx <alphalynx@protonmail.com>

pkgname=pyactivate
pkgver=1.0.1
pkgrel=2
pkgdesc="Add a python venv to your environment from within subdirs in a project"
arch=(any)
url="https://github.com/AlphaLynx0/$pkgname"
license=('0BSD')
depends=(bash)
source=("$pkgname-$pkgver.tar.gz::$url/archive/refs/tags/v$pkgver.tar.gz")
b2sums=('95b1b0487bc463f00befc050a4b0e43f2bd7f5e153a89b24177b1d3a517b9e9495259c65a38a998be1111369ec9e5077230de6de37d88b08cd8fad896f4c3f68')

package() {
    cd "$pkgname-$pkgver"
    install -Dm755 pyactivate.sh "$pkgdir/usr/bin/$pkgname"
    install -Dm644 LICENSE "$pkgdir/usr/share/licenses/$pkgname/0BSD.txt"
}
