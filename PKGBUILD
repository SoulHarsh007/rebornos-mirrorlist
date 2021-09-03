# Maintainer: Rafael <rafael@rebornos.org>

pkgname=rebornos-mirrorlist
filename=reborn-mirrorlist
pkgver=20210903
pkgrel=1
pkgdesc="RebornOS mirrorlist"
arch=('any')
url="https://github.com/RebornOS-Developers/rebornos-mirrorlist"
license=('GPL3')
source=(${filename})
install=${pkgname}.install
sha256sums=('a6db2201c089f5b830061aaaebfe9835fcf1197405fea4e628910b4d709958ab')

pkgver() {
    date +%Y%m%d
}

package() {
  mkdir -p ${pkgdir}/etc/pacman.d
  install -m644 ${srcdir}/${filename} ${pkgdir}/etc/pacman.d/${filename}-new
}

