# Maintainer: Rafael <rafael@rebornos.org>

pkgname=rebornos-mirrorlist
filename=reborn-mirrorlist
pkgver=20221201
pkgrel=1
pkgdesc="RebornOS mirrorlist"
arch=('any')
url="https://github.com/RebornOS-Developers/rebornos-mirrorlist"
license=('GPL3')
source=(${filename})
install=${pkgname}.install
sha256sums=('5e75ecb3218a2b098e39fdaeb449b4d0f35a384c07c5e4a1cc7225fd7b8813cd')

pkgver() {
    date +%Y%m%d
}

package() {
  mkdir -p ${pkgdir}/etc/pacman.d
  install -m644 ${srcdir}/${filename} ${pkgdir}/etc/pacman.d/${filename}-new
}

