# Base Maintainer: Filipe Laíns (FFY00) <lains@archlinux.org>
# Original Source: https://github.com/Se7endAY/grub2-theme-vimix
# Maintainer: EndeavourOS-Team <info@endeavouros.com>
pkgname=grub2-theme-endeavouros
pkgver=20220602
pkgrel=1
pkgdesc='EndeavourOS grub2 theme'
arch=(any)
url='https://github.com/endeavouros-team/'
license=('GPL3')
depends=('grub')
makedepends=('git')
replaces=('vimix-grub' 'grub-theme-vimix' 'grub-themes-vimix')
makedepends=('git')
source=("https://github.com/endeavouros-team/grub2-theme-endeavouros/archive/refs/tags/${pkgver}.tar.gz")
sha512sums=('e6abbb09284ab503f26960d963c51919a3d167529ccbd8f723295f2c01b47e9d449d3edaaa942900275b1d573ed5fbc48e834d87cf0bc6fb370a455429b8632b')

package() {
    install -dm 755 "$pkgdir/boot/grub/themes/EndeavourOS"
    cp -r --no-preserve=ownership "grub2-theme-endeavouros-$pkgver/EndeavourOS" "$pkgdir/boot/grub/themes/"
}
