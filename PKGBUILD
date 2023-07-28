pkgname=rebornos-mirrorlist
pkgver=20230728
pkgrel=1
pkgdesc="RebornOS mirror list for use by pacman"
arch=('any')
url="https://github.com/RebornOS-Developers/rebornos-mirrorlist"
license=('GPL3')
source=("reborn-mirrorlist")
backup=("etc/pacman.d/reborn-mirrorlist")
sha256sums=('6e1b8e8b2a6b500ec06cc6d09493b12105311dfaa81e99c353a53fc4275faa30')

pkgver() {
  date +%Y%m%d
}

package() {
  mkdir -p "$pkgdir/etc/pacman.d"
  install -m644 "$srcdir/reborn-mirrorlist" "$pkgdir/etc/pacman.d/"
}
