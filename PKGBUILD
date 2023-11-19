pkgname=rebornos-mirrorlist
pkgver=20231119
pkgrel=1
pkgdesc="RebornOS mirror list for use by pacman"
arch=('any')
url="https://github.com/RebornOS-Developers/rebornos-mirrorlist"
license=('GPL3')
source=("reborn-mirrorlist")
backup=("etc/pacman.d/reborn-mirrorlist")
sha256sums=('ee5c8d7e88ee6c20362d0804ef34bf09bd81a48f7b0888c5844e180eebe696dd')

pkgver() {
  date +%Y%m%d
}

package() {
  mkdir -p "$pkgdir/etc/pacman.d"
  install -m644 "$srcdir/reborn-mirrorlist" "$pkgdir/etc/pacman.d/"
}
