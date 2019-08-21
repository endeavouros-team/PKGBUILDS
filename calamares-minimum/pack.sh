#!/bin/bash

# Maintainers: Portergos Linux <portergoslinux@gmail.com>, EndeavourOS info@endeavouros.com
# Multipurpose installer for arch based distros

FILE_NAME="pack.sh"
URL=""

_prepare() {

    if [ ! -d $srcdir/$reponame ]
        then 
            git clone https://github.com/calamares/calamares.git
            rsync -va $srcdir/$reponame_clone/* $srcdir/$reponame
            rm -rf $srcdir/$reponame_clone
    fi

    mkdir -p $srcdir/$reponame/build/$pkgname
    #mkdir -p $srcdir/$reponame/here

    #rm -r $srcdir/$reponame/src/modules/{packagechooser,tracking}
    #rm -r $srcdir/$reponame/src/build/calamares
    #rm -r src/modules/{dummypythonqt,tracking,dummycpp,dummyprocess,dummypython,dummypythonqt,dracutlukscfg,plymouthcfg,dracut,initramfs,webview}

    sed -i "s?configuration files\" OFF?configuration files\" ON?g" $srcdir/$reponame/CMakeLists.txt
    sed -i "s?username: live?username: liveuser?g"  $srcdir/$reponame/src/modules/removeuser/removeuser.conf
    sed -i 's/\"mkinitcpio\", \"-p\", m_kernel/\"mkinitcpio\", \"-P\"/' $srcdir/$reponame/src/modules/initcpio/InitcpioJob.cpp

}

_build() {

    cd $srcdir/$reponame/build
    cmake .. -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_LIBDIR=/usr/lib -DCMAKE_INSTALL_PREFIX=/usr
    export DESTDIR="$srcdir/$reponame/build/$pkgname" && make install

  }

_package() {
    cd $srcdir/$reponame/build/$pkgname

    cp -r $srcdir/$reponame/src/branding ${srcdir}/${reponame}/build/$pkgname/usr/share/calamares/

    cp -r $srcdir/$reponame/{settings.conf_offline,settings.conf_online} ${srcdir}/${reponame}/build/$pkgname/usr/share/calamares/

    cp -r $srcdir/$reponame/src/modules/welcome/{welcome.conf_online,welcome.conf_offline} ${srcdir}/${reponame}/build/$pkgname/usr/share/calamares/modules/

    cp -r $srcdir/$reponame/src/modules/packages/{packages.conf_online,packages.conf_offline} ${srcdir}/${reponame}/build/$pkgname/usr/share/calamares/modules/

    cp -r "${srcdir}/${reponame}/build/$pkgname/"* "${pkgdir}${destdir}"
}

## STARTS HERE
if [ ! -f $FILE_NAME ]; then wget $URL; chmod +x $FILE_NAME; fi
