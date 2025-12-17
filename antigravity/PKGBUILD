# Maintainer: AlphaLynx <alphalynx at alphalynx dot dev>

pkgname=antigravity
pkgver=1.12.4
pkgrel=1
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
    'systemd-libs'
)
options=(!strip !debug)
source_aarch64=("Antigravity-$pkgver-aarch64.deb::https://us-central1-apt.pkg.dev/projects/$pkgname-auto-updater-dev/pool/$pkgname-debian/${pkgname}_$pkgver-1765945644_arm64_e9f1dca901faf9f1a2ef968116b6f835.deb")
source_x86_64=("Antigravity-$pkgver-x86_64.deb::https://us-central1-apt.pkg.dev/projects/$pkgname-auto-updater-dev/pool/$pkgname-debian/${pkgname}_$pkgver-1765945650_amd64_2e1596b9e78009717589d375637bab9f.deb")
sha256sums_aarch64=('755e546b01248abb599d33ff788f1c252115e53bc486cd2cbe6157e996b15db0')
sha256sums_x86_64=('b19ba8495542ae75152df7c111330a36c6f7ba8358c015734418ad2f2847ae4d')
b2sums_aarch64=('5a1aeba76aad4b3a1ec38d0e8e5a1982c188a4ae14a86ae8e4a10b6af0f87d5e0699d5c1be85a5e352a7ad7aa1ca126ad2766190d4b2b02b673f79d8a2cf12f4')
b2sums_x86_64=('985e3986e0658103c02461a0b316c4c7a0c4a0d8ac1f5ba081491e1603101771e51e153690361c100ab9c2bd2b474edff4947b3a25e7574190c9e66b0f686462')

package() {
    tar -xf data.tar.xz --no-same-owner -C "$pkgdir/"

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
