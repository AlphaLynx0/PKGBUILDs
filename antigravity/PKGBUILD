# Maintainer: AlphaLynx <alphalynx at alphalynx dot dev>

pkgname=antigravity
pkgver=1.11.5
pkgrel=1
pkgdesc='An agentic development platform from Google, evolving the IDE into the agent-first era.'
arch=('x86_64')
url='https://antigravity.google/'
license=('LicenseRef-unknown')
depends=(
    'alsa-lib'
    'at-spi2-core'
    'bash'
    'cairo'
    'dbus'
    'expat'
    'gcc-libs'
    'glib2'
    'glibc'
    'gtk3'
    'libcups'
    'libx11'
    'libxcb'
    'libxcomposite'
    'libxdamage'
    'libxext'
    'libxfixes'
    'libxkbcommon'
    'libxkbfile'
    'libxrandr'
    'mesa'
    'nspr'
    'nss'
    'pango'
    'systemd-libs'
)
source=("$pkgname-$pkgver.tar.gz::https://edgedl.me.gvt1.com/edgedl/release2/j0qc3/antigravity/stable/$pkgver-5234145629700096/linux-x64/Antigravity.tar.gz"
        "antigravity.desktop"
        "antigravity-url-handler.desktop")
b2sums=('03e4e294db4ed4bf257071ca67c7e2e00f5ccc89ce5c4a8c64a9fbdd4b15c85b6145d333deb997305c0bf1de7bf2322cba73587fc5fe7f22e38b2b6f4b829bcc'
        '59dc67f1cb2f06e77aa1e3496ebcdfc7b8182f94b6cec53f727c8644486b5259ac6683cc7db61dfa4ce5d468e96737290256529e44cc171adcd8dc4e106b3dbb'
        '99042366cd8f3a4da093234903d755106ed895afafbe203c253927322126c70cfe75f28ca0bfb345688478f786f22f33e1e58c5e14479030f9babf32193c9071')

package() {
    install -dm755 "$pkgdir/opt/Antigravity"
    cp -a Antigravity/* "$pkgdir/opt/Antigravity/"

    install -dm755 "$pkgdir/usr/bin"
    ln -s /opt/Antigravity/bin/$pkgname "$pkgdir/usr/bin/$pkgname"

    install -Dm644 $pkgname.desktop \
        "$pkgdir/usr/share/applications/$pkgname.desktop"
    install -Dm644 $pkgname-url-handler.desktop \
        "$pkgdir/usr/share/applications/$pkgname-url-handler.desktop"

    install -dm755 "$pkgdir/usr/share/pixmaps"
    ln -s /opt/Antigravity/resources/app/resources/linux/code.png \
        "$pkgdir/usr/share/pixmaps/$pkgname.png"
}
