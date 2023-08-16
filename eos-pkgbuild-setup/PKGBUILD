#!/bin/bash

# Maintainer: EndeavourOS-Team <info@endeavouros.com>

pkgname=eos-pkgbuild-setup
pkgdesc="Environment setup and tools for building EOS packages."
pkgver=2023    # new numbering! Previous was: 2022.12.25
pkgrel=33
arch=(any)
license=(GPL2)
url="https://github.com/endeavouros-team/eos-pkgbuild-setup/raw/main"
depends=(git hub yay curl wget xdg-utils)
backup=(
    etc/eos-mirrorcheck.conf
    etc/eos-pkgbuild-setup.conf
    etc/eos-pkgbuild-setup-general.conf
)
source=(
    git+https://github.com/endeavouros-team/eos-pkgbuild-setup.git
)
sha512sums=('SKIP')

package() {
    cd $pkgname

    local -r _scripts="$pkgdir/usr/share/endeavouros/scripts"
    local -r _usr_bin="$pkgdir/usr/bin"
    local -r _usr_local_bin="$pkgdir/usr/local/bin"
    local -r _etc="$pkgdir/etc"
    local -r _bash_completion="$pkgdir/usr/share/bash-completion/completions"

    echo "VERSION=${pkgver}-$pkgrel" > "$pkgname.version"

    install -Dm644 "$pkgname.version"          "$_scripts/$pkgname.version"
    install -Dm644 PackageFunc                 "$_scripts/PackageFunc"
    install -Dm755 local-general-setup         "$_scripts/local-general-setup"

    install -Dm755 "$pkgname"                  "$_usr_bin/$pkgname"
    install -Dm755 archive-sync-to-remote      "$_usr_bin/archive-sync-to-remote"
    install -Dm755 assets.make                 "$_usr_bin/assets.make"
    install -Dm755 add-release-assets          "$_usr_bin/add-release-assets"
    install -Dm755 delete-release-assets       "$_usr_bin/delete-release-assets"
    install -Dm755 download-release-assets     "$_usr_bin/download-release-assets"
    install -Dm755 release-asset-names         "$_usr_bin/release-asset-names"
    install -Dm755 pacman-for-assets.make      "$_usr_bin/pacman-for-assets.make"

    install -Dm755 githubcheck                 "$_usr_local_bin/githubcheck"
    install -Dm755 mirrorcheck                 "$_usr_local_bin/mirrorcheck"

    install -Dm644 eos-mirrorcheck.conf        "$_etc/eos-mirrorcheck.conf"
    install -Dm644 eos-pkgbuild-setup.conf     "$_etc/eos-pkgbuild-setup.conf"
    install -Dm644 eos-pkgbuild-setup-general.conf "$_etc/eos-pkgbuild-setup-general.conf"

    # common completions
    install -Dm644 mirrorcheck.completion        "$_bash_completion/mirrorcheck"
    install -Dm644 add-release-assets.completion "$_bash_completion/add-release-assets"
    ln -s add-release-assets                     "$_bash_completion/delete-release-assets"      # helps with the tag
    ln -s add-release-assets                     "$_bash_completion/release-asset-names"        # helps with the tag
    ln -s add-release-assets                     "$_bash_completion/download-release-assets"    # helps with the tag

    # cleanup
    cd ../..
    if [ -d $pkgname/refs ] && [ -r $pkgname/config ] ; then
        rm -rf $pkgname
    fi
}
