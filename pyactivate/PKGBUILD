# Maintainer: AlphaLynx <alphalynx@protonmail.com>

pkgname=pyactivate
pkgver=1.0.2
pkgrel=1
pkgdesc="Add a python venv to your environment from within subdirs in a project"
arch=(any)
url="https://github.com/AlphaLynx0/$pkgname"
license=('0BSD')
depends=(bash)
source=("$pkgname-$pkgver.tar.gz::$url/archive/refs/tags/v$pkgver.tar.gz")
b2sums=('8f4a9d2e459d5ea0d4409daa2afa0f036e386e51df8ee5acaaec43ded02aae15027cb95e6bb36fdb7dca54ef7911d24253aaf995199d93681ffb707763f649d8')

package() {
    cd "$pkgname-$pkgver"
    install -Dm755 pyactivate.sh "$pkgdir/usr/bin/$pkgname"
    install -Dm644 LICENSE "$pkgdir/usr/share/licenses/$pkgname/0BSD.txt"
}
