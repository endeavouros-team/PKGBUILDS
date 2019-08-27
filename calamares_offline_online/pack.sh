#!/bin/bash

# Maintainers: Portergos Linux <portergoslinux@gmail.com>, EndeavourOS info@endeavouros.com
# Multipurpose installer for arch based distros

answer=""

_pkgname() {
# Not working yet
    echo -e "Choose a package name\n"
    echo -e "Default calamares_current \n"
    read -t 20 pkgname
    if [ $? == 1 ]; then pkgname="calamares_current"; fi
    echo "$pkgname" >.pkgname

}

_offline_online() {

    # install the package accordingly
    echo "Choose offline/online install:"
    echo "   1   for offline install (default)"
    echo "   2   for online install"
    read -p "Number: " answer
    if [ "$answer" != "2" ]; then answer="1"; fi
    echo "$answer"

}

_prepare() {

    if [ ! -d $srcdir/$reponame ]
        then 
            #git clone https://github.com/calamares/calamares.git
            wget https://github.com/calamares/calamares/releases/download/v$pkgver/$reponame-$pkgver.tar.gz
            tar -zxvf $reponame-$pkgver.tar.gz
            rm $reponame-$pkgver.tar.gz
            mv $reponame-$pkgver $reponame
            rsync -va $srcdir/$reponame_clone/* $srcdir/$reponame
            rm -rf $srcdir/$reponame_clone
    fi

case $answer in

    1)
    cp -r ${srcdir}/${reponame}/src/modules/packages/packages.conf_offline ${srcdir}/${reponame}/src/modules/packages/packages.conf
    cp -r ${srcdir}/${reponame}/settings.conf_offline ${srcdir}/${reponame}/settings.conf
    cp -r ${srcdir}/${reponame}/src/modules/welcome/welcome.conf_offline ${srcdir}/${reponame}/src/modules/welcome/welcome.conf 

    ;;
    2)
    cp -r ${srcdir}/${reponame}/src/modules/packages/packages.conf_online ${srcdir}/${reponame}/src/modules/packages/packages.conf
    cp -r ${srcdir}/${reponame}/settings.conf_online ${srcdir}/${reponame}/settings.conf
    cp -r ${srcdir}/${reponame}/src/modules/welcome/welcome.conf_online ${srcdir}/${reponame}/src/modules/welcome/welcome.conf

    ;;
    *)

esac

    mkdir -p $srcdir/$reponame/build/$pkgname
    #rm -r $srcdir/$reponame/src/modules/{packagechooser}
    rm -r $srcdir/$reponame/src/modules/{dummypythonqt,tracking,dummycpp,dummyprocess,dummypython,dummypythonqt,dracutlukscfg,plymouthcfg,dracut,initramfs,webview} ||true
    sed -i "s?configuration files\" OFF?configuration files\" ON?g" $srcdir/$reponame/CMakeLists.txt
    sed -i "s?username: live?username: liveuser?g"  $srcdir/$reponame/src/modules/removeuser/removeuser.conf
    sed -i 's/\"mkinitcpio\", \"-p\", m_kernel/\"mkinitcpio\", \"-P\"/' $srcdir/$reponame/src/modules/initcpio/InitcpioJob.cpp
    sed -i "s?./example.sqfs?\"/run/archiso/bootmnt/arch/x86_64/airootfs.sfs\"?g" $srcdir/$reponame/src/modules/unpackfs/unpackfs.conf
   
}

_build() {

    cd $srcdir/$reponame/build
    cmake .. -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_LIBDIR=/usr/lib -DCMAKE_INSTALL_PREFIX=/usr
    export DESTDIR="$srcdir/$reponame/build/$pkgname" && make -j4 install

  }

_package() {
    #cd $srcdir/$reponame/build/$pkgname
	#not working yet
    #pgkname=""
    #cat .pkgname 2>1 $pkgname


    cp -r $srcdir/$reponame/src/branding ${srcdir}/${reponame}/build/$pkgname/usr/share/calamares/

    cp -r $srcdir/$reponame/{settings.conf_offline,settings.conf_online} ${srcdir}/${reponame}/build/$pkgname/usr/share/calamares/

    cp -r $srcdir/$reponame/src/modules/welcome/{welcome.conf_online,welcome.conf_offline} ${srcdir}/${reponame}/build/$pkgname/usr/share/calamares/modules/

    cp -r $srcdir/$reponame/src/modules/packages/{packages.conf_online,packages.conf_offline} ${srcdir}/${reponame}/build/$pkgname/usr/share/calamares/modules/



    cp -r "${srcdir}/${reponame}/build/$pkgname/"* "${pkgdir}${destdir}"
}





