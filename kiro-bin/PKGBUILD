# Maintainer: AlphaLynx <alphalynx at alphalynx dot dev>

pkgname=kiro-bin
_name="${pkgname%-bin}"
pkgver=0.3.0
pkgrel=1
epoch=1
pkgdesc='The AI IDE for prototype to production'
arch=('x86_64')
url='https://kiro.dev/'
# By downloading and using Kiro, you agree to the following:
#   AWS Customer Agreement: https://aws.amazon.com/agreement/
#   AWS Intellectual Property License: https://aws.amazon.com/legal/aws-ip-license-terms/
#   Service Terms: https://aws.amazon.com/service-terms/
#   Privacy Notice: https://aws.amazon.com/privacy/
license=('LicenseRef-AWS-IPL')
makedepends=('openssl')
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
    'nodejs'
    'nspr'
    'nss'
    'pango'
    'perl'
    'python'
    'systemd-libs'
)
provides=("$_name")
conflicts=("$_name")
options=('!debug' '!strip')
_timestamp=202509300138
_baseurl=https://prod.download.desktop.kiro.dev/releases/$_timestamp--distro-linux-x64-tar-gz
source=(
    "$_name-$_timestamp.tar.gz::$_baseurl/$_timestamp-distro-linux-x64.tar.gz"
    "$_name-certificate.pem::$_baseurl/certificate.pem"
    "$_name-$_timestamp-signature.bin::$_baseurl/signature.bin"
    "$_name.desktop"
    "$_name-url-handler.desktop"
    "$_name-workspace.xml"
)
b2sums=('33884a678cb8ddaea6f6fff125d3cfad6fe7dc66be31a7bae3cc39d4fa73900e39785c72b6c3e156c864b306cd3f05d46e13d3af834e5f96904baaec0ad52813'
        '09676f21f9b2821f7fb789fde98f1825f53d1df64ab74932ec2117f6cf06985bc5795ea7a016d90e9318035b2dd7c2f9706dccf44eb4cd092e4268a5f4760a26'
        'eb302e143f8eaba886e0e851469e50db086e6299e8fe7f72bf9dd227301df17015eca288be5e11a1205850746e975ebce204c193e0105b0f31444436597e94a0'
        'ab6e96fccff12d2d7c94dda4647f9fc1e6b0728ac7dd45edba14e364516ed4ad34f01bb7cc48e139fb817f57c309b8fa230c62c3b399915cc7341c2af039d309'
        'fd694d647fe06c439026f1a570fba288fb51bf41fe76de60af1e911255e4692b5a3cae1a8c279ed77a4990618b957591b79b6f152728374af97bea1189691014'
        'bf76f34c64e272831da98a3642f827b159582fafb3918db9f7334ed7ed9eace747148d6f0f863d2a5f1e751b7d43f109e35a8ac7ee1985c09d7ea90b73a40455')

verify() {
    openssl x509 -pubkey -noout -in $_name-certificate.pem > kiro-pubkey.pem
    openssl dgst -sha256 -verify kiro-pubkey.pem -signature $_name-$_timestamp-signature.bin \
        $_name-$_timestamp.tar.gz
}

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
