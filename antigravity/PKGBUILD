# Maintainer: AlphaLynx <alphalynx at alphalynx dot dev>

pkgname=antigravity
pkgver=1.11.17
pkgrel=2
pkgdesc='An agentic development platform from Google, evolving the IDE into the agent-first era.'
arch=('aarch64' 'x86_64')
url='https://antigravity.google/'
license=('LicenseRef-Google-Antigravity')
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
    'shared-mime-info'
    'systemd-libs'
)
options=(!strip !debug)
source_aarch64=("Antigravity-$pkgver-aarch64.deb::https://us-central1-apt.pkg.dev/projects/$pkgname-auto-updater-dev/pool/$pkgname-debian/${pkgname}_$pkgver-1765244394_arm64_3598920248a8fb4e1e2d36f385f131c7.deb")
source_x86_64=("Antigravity-$pkgver-x86_64.deb::https://us-central1-apt.pkg.dev/projects/$pkgname-auto-updater-dev/pool/$pkgname-debian/${pkgname}_$pkgver-1765244408_amd64_9df0712156d4f7f37ea353feaa9633ca.deb")
sha256sums_aarch64=('62821f4127e0bee8cba2cd100c30891cd672264d45e73b060f8a437ede748a58')
sha256sums_x86_64=('f5b61a4d00354f846e8850a2da9e87b7e204298f0f5cfa0365ede7207c7fc897')
b2sums_aarch64=('6003b7aaf42c8e67eed5249e82b92fc395b72af8350063a9fe0225c014e81c5e56c8ecf0c6025db55e4c5980656da39603ae9bcddafca90d7d82d04fc7588210')
b2sums_x86_64=('c2e5d024d0374d3676780dbccbd7ff31dd87ee3798f1cec3da7daca87fdf48a4eb2c3d266d6d89089a2e8d3ef8e8dda45b1a03e722ef5713168f23d421631052')

package() {
    tar -xf data.tar.xz -C "$pkgdir/"

    install -dm755 "$pkgdir/opt"
    mv "$pkgdir/usr/share/$pkgname" "$pkgdir/opt/Antigravity"

    install -dm755 "$pkgdir/usr/bin"
    ln -s /opt/Antigravity/bin/$pkgname "$pkgdir/usr/bin/$pkgname"

    sed -i 's|/usr/share/antigravity|/opt/Antigravity|g' "$pkgdir/usr/share/applications/"*.desktop

    install -dm755 "$pkgdir/usr/share/metainfo"
    mv "$pkgdir/usr/share/appdata/$pkgname.appdata.xml" \
        "$pkgdir/usr/share/metainfo/$pkgname.appdata.xml"
    rmdir "$pkgdir/usr/share/appdata"

    install -dm755 "$pkgdir/usr/share/licenses/$pkgname"
    ln -s /opt/Antigravity/resources/app/LICENSE.txt \
        "$pkgdir/usr/share/licenses/$pkgname/LICENSE.txt"
    ln -s /opt/Antigravity/LICENSES.chromium.html \
        "$pkgdir/usr/share/licenses/$pkgname/LICENSES.chromium.html"
}
