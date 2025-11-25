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
        '7253b40f22b443fb48335a856e07b8dedc76577541718bb038bbb79b77ae1dc5140e895a15e5b4d0a0319b7e189340c9ac854d3ef91935790e1d92a46d6ff2ff'
        '62bf1b8de87553a1796f488f388b0c36333643376c42598da14ef5de276aadc5f5f494697abd4a0bccf2de2f349b066a7a95b48f79d67cc1dd1973ef7c02cedd')

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
