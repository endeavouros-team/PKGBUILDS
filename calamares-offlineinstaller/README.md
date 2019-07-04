**Build calamares-offlineinstaller package in a clean chroot:**<br>
create a clean chroot with mkarchroot:

`mkdir ~/ENDEAVOUROS-CHROOT` <br>
`mkdir ~/EndeavourOS-repository` <br>
`mkarchroot ~/ENDEAVOUROS/root base-devel cmake lsb-release cmake qt5-svg qt5-webengine yaml-cpp extra-cmake-modules boost networkmanager upower partitionmanager kcoreaddons kconfig ki18n kservice kwidgetsaddons kpmcore squashfs-tools rsync cryptsetup qt5-xmlpatterns doxygen dmidecode gptfdisk hwinfo kparts parted polkit-qt5 python qt5ct solid git qt5-tools libpwquality`

then run the script:

`build-v21.sh` <br>
choose `1. chroot`<br>
then again run the script: `build-v21.sh`<br> and choose `2. makepkg`
