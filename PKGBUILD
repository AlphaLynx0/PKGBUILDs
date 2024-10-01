# Maintainer: AlphaLynx <alphalynx@protonmail.com>
pkgname=sshp
pkgver=1.1.3
pkgrel=2
pkgdesc='Parallel SSH Executor'
arch=('any')
url="https://github.com/bahamas10/$pkgname"
license=('MIT')
depends=('glibc')
source=("$pkgname-$pkgver.tar.gz::https://github.com/bahamas10/$pkgname/archive/refs/tags/v$pkgver.tar.gz")
sha256sums=('SKIP')

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
	install -Dm755 sshp "$pkgdir/usr/bin/$pkgname"
	install -Dm644 man/sshp.1 "$pkgdir/usr/share/man/man1/$pkgname.1"
	install -Dm644 README.md "$pkgdir/usr/share/doc/$pkgname/README.md"
	install -Dm644 CHANGES.md "$pkgdir/usr/share/doc/$pkgname/CHANGES.md"
	install -Dm644 LICENSE "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
}
