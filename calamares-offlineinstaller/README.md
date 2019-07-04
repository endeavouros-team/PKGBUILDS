**Build calamares-offlineinstaller package in a clean chroot:**<br>
create a clean chroot with mkarchroot:

`mkdir ~/ENDEAVOUROS-CHROOT` <br>
`mkarchroot ~/ENDEAVOUROS/root base-devel`

then run the script:

`build-v21.sh` <br>
choose `1. chroot`<br>
then again run the script: `build-v21.sh`<br> and choose `2. makepkg`
