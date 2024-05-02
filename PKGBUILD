pkgname=rebornos-mirrorlist
pkgver=20240502
pkgrel=1
pkgdesc="RebornOS mirror list for use by pacman"
arch=('any')
url="https://github.com/RebornOS-Team/rebornos-mirrorlist"
license=('GPL3')
source=("reborn-mirrorlist")
backup=("etc/pacman.d/reborn-mirrorlist")
sha256sums=('910064564a196977428f01d979ea7e686066e5bd5856bf0e5b4bf8ce11c8e81d')

pkgver() {
  date +%Y%m%d
}

package() {
  mkdir -p "$pkgdir/etc/pacman.d"
  install -m644 "$srcdir/reborn-mirrorlist" "$pkgdir/etc/pacman.d/"
}
