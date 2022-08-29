# Maintainer: Rafael <rafael@rebornos.org>

pkgname=rebornos-mirrorlist
filename=reborn-mirrorlist
pkgver=20220729
pkgrel=1
pkgdesc="RebornOS mirrorlist"
arch=('any')
url="https://gitlab.com/rebornos-team/rebornos-special-system-files/rebornos-mirrorlist"
urlmirr="https://gitlab.com/rebornos-team/rebornos-special-system-files/mirrors"
license=('GPL3')
source=(${filename})
install=${pkgname}.install
sha256sums=('4d7b37096a493d0e4f4b3ae46a809063886e91ebdf4b118be214a38675cbd862')

pkgver() {
    date +%Y%m%d
}

package() {
  mkdir -p ${pkgdir}/etc/pacman.d
  install -m644 ${srcdir}/${filename} ${pkgdir}/etc/pacman.d/${filename}-new
}

