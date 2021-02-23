pkgname=eos-systemd-boot
pkgver=0.03
pkgrel=1
pkgdesc='Enables systemd-boot automation using kernel-install on EndeavourOS'
arch=(any)
url='https://gitlab.com/dalto.8/eos-systemd-boot'
license=(GPL2)
depends=(systemd)
source=(git+https://gitlab.com/dalto.8/eos-systemd-boot.git)
sha256sums=('SKIP')

package()
{
    # install the package files
    cp -a ${srcdir}/${pkgname}/src/usr ${pkgdir}

    # set the permissions on the files in /usr/bin
    chmod 755 ${pkgdir}/usr/bin/rebuild-initramfs

    # mask the default loaderentry creator
    mkdir -p "${pkgdir}/etc/kernel/install.d"
    touch "${pkgdir}/etc/kernel/install.d/90-loaderentry.install"

    # mask the mkinitcpio hooks
    mkdir -p "${pkgdir}/etc/pacman.d/hooks"
    touch "${pkgdir}/etc/pacman.d/hooks/90-mkinitcpio-install.hook"
    touch "${pkgdir}/etc/pacman.d/hooks/60-mkinitcpio-remove.hook"
}
