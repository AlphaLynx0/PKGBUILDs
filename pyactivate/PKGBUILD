# Maintainer: AlphaLynx <alphalynx@protonmail.com>

pkgname=pyactivate
pkgver=1.0.1
pkgrel=1
pkgdesc="Add a python venv to your environment from within subdirs in a project"
arch=(any)
url="https://github.com/AlphaLynx0/$pkgname"
license=('0BSD')
depends=(bash)
source=("$pkgname-$pkgver.tar.gz::$url/archive/refs/tags/v$pkgver.tar.gz")
b2sums=('5e8b29121be5c375473587313682cf33aa771635ace22ade7c9f240c61d620dc3c1d428ba72e6ba1d8c5569fa4a1a0381dc07ae828d87780bd4908d669032c43')

package() {
    cd "$pkgname-$pkgver"
    install -Dm755 pyactivate.sh "$pkgdir/usr/bin/$pkgname"
    install -Dm644 LICENSE "$pkgdir/usr/share/licenses/$pkgname/0BSD.txt"
}
