# Maintainer: Zen <dev@pyl.onl>
# Maintainer: AlphaLynx <alphalynx@protonmail.com>

pkgname=ugrd-git
pkgver=2.0.0_pre_r2.r32.g0f67cf2
pkgrel=1
pkgdesc="Python based initramfs generator with TOML defintions"
arch=('x86_64')
url="https://github.com/desultory/ugrd"
license=('GPL-2.0-only')
makedepends=(git python-build python-installer python-wheel python-setuptools)
depends=(bc python-zenlib-git python-pycpio-git pax-utils)
optdepends=('python-zstandard: zstd cpio compression')
provides=(ugrd initramfs)
conflicts=(ugrd)
source=("git+https://github.com/desultory/ugrd")
# https://wiki.gentoo.org/wiki/User:Zen_desu
# gpg  --keyserver 'hkps://keys.openpgp.org' --recv-keys 7751D62F9F9A0454B86871CE64FA651BB8850B48
#validpgpkeys=('7751D62F9F9A0454B86871CE64FA651BB8850B48')
sha256sums=(SKIP) 
backup=(etc/ugrd/config.toml)
_name=${pkgname%-git}

pkgver() {
    cd $_name
    git describe --long --tags --abbrev=7 | sed 's/\([^-]*-g\)/r\1/;s/-/./g'
}

prepare() {
    cd $_name
    git clean -dfx
}

build() {
    cd $_name
    python -m build --wheel --no-isolation
}

package() {
    cd $_name
    python -m installer --destdir="$pkgdir" dist/*.whl
    install -Dm0644 examples/example.toml "$pkgdir/etc/ugrd/config.toml"
    install -Dm0644 completion/ugrd "$pkgdir/usr/share/bash-completion/completions/ugrd"
    install -Dm0644 completion/_ugrd "$pkgdir/usr/share/zsh/site-functions/_ugrd"
    install -Dm0644 hooks/alpm/91-ugrd.hook "$pkgdir/usr/share/libalpm/hooks/91-ugrd.hook"
}
