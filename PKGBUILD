# Maintainer: AlphaLynx <AlphaLynx at protonmail dot com>

pkgname=kiro-bin
_name="${pkgname%-bin}"
pkgver=0.1.28
pkgrel=1
pkgdesc='The AI IDE for prototype to production'
arch=('x86_64')
url='https://kiro.dev/'
# By downloading and using Kiro, you agree to the following:
#   AWS Customer Agreement: https://aws.amazon.com/agreement/
#   AWS Intellectual Property License: https://aws.amazon.com/legal/aws-ip-license-terms/
#   Service Terms: https://aws.amazon.com/service-terms/
#   Privacy Notice: https://aws.amazon.com/privacy/
license=('LicenseRef-AWS-IPL')
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
    'libdrm'
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
    'nodejs'
    'nspr'
    'nss'
    'pango'
)
provides=("$_name")
conflicts=("$_name")
options=('!debug' '!strip')
source=(
    "$_name-202507260047.tar.gz::https://prod.download.desktop.kiro.dev/releases/202507260047--distro-linux-x64-tar-gz/202507260047-distro-linux-x64.tar.gz"
    "$_name.desktop"
    "$_name-url-handler.desktop"
    "$_name-workspace.xml"
)
b2sums=('140e588ed88a519ad2d353f54cb57f8a7cd743efa183d592086a8b087369ee2277f1d6488d22c4d4699cef36b9eed22efd7c69994a77a362dab1ef403f80a11e'
        'ab6e96fccff12d2d7c94dda4647f9fc1e6b0728ac7dd45edba14e364516ed4ad34f01bb7cc48e139fb817f57c309b8fa230c62c3b399915cc7341c2af039d309'
        'fd694d647fe06c439026f1a570fba288fb51bf41fe76de60af1e911255e4692b5a3cae1a8c279ed77a4990618b957591b79b6f152728374af97bea1189691014'
        'bf76f34c64e272831da98a3642f827b159582fafb3918db9f7334ed7ed9eace747148d6f0f863d2a5f1e751b7d43f109e35a8ac7ee1985c09d7ea90b73a40455')

package() {
    mkdir -p "$pkgdir/opt/Kiro"
    cp -r Kiro/* "$pkgdir/opt/Kiro"

    mkdir -p "$pkgdir/usr/bin"
    ln -s /opt/Kiro/bin/$_name "$pkgdir/usr/bin/$_name"

    mkdir -p "$pkgdir/usr/share/licenses/$pkgname"
    ln -s /opt/Kiro/resources/app/LICENSE.txt "$pkgdir/usr/share/licenses/$pkgname/LICENSE.txt"

    mkdir -p "$pkgdir/usr/share/pixmaps"
    ln -s /opt/Kiro/resources/app/resources/linux/code.png "$pkgdir/usr/share/pixmaps/$_name.png"

    mkdir -p "$pkgdir/usr/share/bash-completion/completions"
    mkdir -p "$pkgdir/usr/share/zsh/site-functions"

    ln -s /opt/Kiro/resources/completions/bash/$_name \
        "$pkgdir/usr/share/bash-completion/completions/$_name"
    ln -s /opt/Kiro/resources/completions/zsh/_$_name \
        "$pkgdir/usr/share/zsh/site-functions/_$_name"

    install -Dm644 $_name.desktop "$pkgdir/usr/share/applications/$_name.desktop"
    install -Dm644 $_name-url-handler.desktop \
        "$pkgdir/usr/share/applications/$_name-url-handler.desktop"
    install -Dm644 $_name-workspace.xml "$pkgdir/usr/share/mime/packages/$_name-workspace.xml"
}
