# Maintainer: AlphaLynx <alphalynx@protonmail.com>

pkgname=pyactivate
pkgver=1.1.1
pkgrel=2
pkgdesc="Add a python venv to your environment from within subdirs in a project"
arch=(any)
url="https://github.com/AlphaLynx0/$pkgname"
license=('0BSD')
install=instructions.install
source=("$pkgname-$pkgver.tar.gz::$url/archive/refs/tags/v$pkgver.tar.gz")
b2sums=('9a013896d37babd11bd5ab61b11213cece2e9e168b62a49c3de6af2595cbf29e6c7dda18ded1980bccf888aa10759c7b6baa3109bdd624d7fc7b84a90b51be51')

package() {
    cd "$pkgname-$pkgver"
    install -Dm644 pyactivate.sh "$pkgdir/usr/share/$pkgname/$pkgname.sh"
    install -Dm644 LICENSE "$pkgdir/usr/share/licenses/$pkgname/0BSD.txt"
}
