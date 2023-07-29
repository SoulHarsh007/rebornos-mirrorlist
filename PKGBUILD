pkgname=rebornos-mirrorlist
pkgver=20230729
pkgrel=1
pkgdesc="RebornOS mirror list for use by pacman"
arch=('any')
url="https://github.com/RebornOS-Developers/rebornos-mirrorlist"
license=('GPL3')
source=("reborn-mirrorlist")
backup=("etc/pacman.d/reborn-mirrorlist")
sha256sums=('e637916ed663eb0a0f1e8a42ecbf06e31581ad132781e91400f3cfb64e8a261d')

pkgver() {
  date +%Y%m%d
}

package() {
  mkdir -p "$pkgdir/etc/pacman.d"
  install -m644 "$srcdir/reborn-mirrorlist" "$pkgdir/etc/pacman.d/"
}
