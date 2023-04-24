# Maintainer: Rafael <rafael@rebornos.org>

pkgname=rebornos-mirrorlist
filename=reborn-mirrorlist
pkgver=20230424
pkgrel=1
pkgdesc="RebornOS mirrorlist"
arch=('any')
url="https://github.com/RebornOS-Developers/rebornos-mirrorlist"
license=('GPL3')
source=(${filename})
install=${pkgname}.install
sha256sums=('235d69202bd6118a3035a64419749e5da6615e984838c44db19e75a9e94cd6bd')

pkgver() {
    date +%Y%m%d
}

package() {
  mkdir -p ${pkgdir}/etc/pacman.d
  install -m644 ${srcdir}/${filename} ${pkgdir}/etc/pacman.d/${filename}-new
}

