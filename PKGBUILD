# Maintainer: AlphaLynx <alphalynx@protonmail.com>

pkgname=sshp-git
pkgver=1.1.3.r129.f27d66f
pkgrel=2
pkgdesc="Parallel SSH Executor"
arch=('x86_64')
url="https://github.com/bahamas10/${pkgname%-git}"
license=('MIT')
depends=('glibc')
makedepends=('git')
provides=("${pkgname%-git}")
conflicts=("${pkgname%-git}")
source=("$pkgname::git+$url")
sha256sums=('SKIP')

pkgver() {
	cd "$pkgname"
    printf "%s.r%s.%s" $(git tag --sort=-v:refname --list | sed -e "s/v//" | grep '^[0-9.]*$' | head -n1) $(git rev-list --count HEAD) $(git rev-parse --short HEAD)
}

build() {
    cd "$pkgname"
    export CFLAGS+=" -fPIE -Wl,-z,relro,-z,now"
    make
}

check() {
    cd "$pkgname"
    make -k check
}

package() {
    cd "$pkgname"
    install -Dm755 sshp "$pkgdir/usr/bin/$pkgname"
    install -Dm644 man/sshp.1 "$pkgdir/usr/share/man/man1/$pkgname.1"
    install -Dm644 README.md "$pkgdir/usr/share/doc/$pkgname/README.md"
    install -Dm644 CHANGES.md "$pkgdir/usr/share/doc/$pkgname/CHANGES.md"
    install -Dm644 LICENSE "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
}

# vim: set ts=4 sw=4 sts=4 et:
