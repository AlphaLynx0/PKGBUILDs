# Maintainer: AlphaLynx <alphalynx@protonmail.com>

pkgname=pyactivate
pkgver=1.0.0
pkgrel=1
pkgdesc="Add a python venv to your environment from within subdirs in a project"
arch=(any)
url="https://github.com/AlphaLynx0/$pkgname"
license=('0BSD')
depends=(bash)
source=("$pkgname-$pkgver.tar.gz::$url/archive/refs/tags/v$pkgver.tar.gz")
b2sums=(e58463dd2bb9913dbcc472810305120c5015f80fd2a540a02b05bf1f8c882226e70741602dd25d124121a1d42e61803fa5f941ac82ddcaca853ea954b970a834)

package() {
    cd "$pkgname-$pkgver"
    install -Dm755 pyactivate.sh "$pkgdir/usr/bin/$pkgname"
    install -Dm644 0BSD.txt "$pkgdir/usr/share/licenses/$pkgname/0BSD.txt"
}
