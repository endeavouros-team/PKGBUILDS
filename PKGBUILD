pkgname=endeavouros-keyring
pkgver=20220521
pkgrel=1
pkgdesc='EndeavourOS keyring'
arch=('any')
url='https://endeavouros.com/'
license=('GPL')
install="${pkgname}.install"
source=('https://raw.githubusercontent.com/endeavouros-team/keyring/main/Makefile'
        'https://raw.githubusercontent.com/endeavouros-team/keyring/main/endeavouros.gpg'
        'https://raw.githubusercontent.com/endeavouros-team/keyring/main/endeavouros-revoked'
        'https://raw.githubusercontent.com/endeavouros-team/keyring/main/endeavouros-trusted')
validpgpkeys=('8F43FC374CD4CEEA19CEE323E3D8752ACDF595A1'  #  joekamprad
              '497af50c92ad2384c56e1aca003db8b0cb23504f'  # legacy eos key
              'E0D16589967E1FE68EF8693E7EED78C58A63A62E'  # bryanpwo
              '286E73D3CB90A2368DE1B0B12B37DD3DB00531E8') # dalto
sha512sums=('7d046b44ee059384cf95aced62c354bf5401aaeea286df113ef74c1b0c186210e9b4fdf55e54b6f2fc28991c28fec9f6aee018505668e44bdc19286761d24609'
            '9ffb490692149a4854d3577151f028ff32b6c6d81a57d786690fc49248735218708b4b2616a856878135317d59256d9010ae79a6658218df5d4037cad47e7417'
            'cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e'
            'aeb16840fbf117c1d9c16bf9b4cfe1ed60b072773eef77bbaac86cfdb2bd6ac800ea3f4823dd0db8efe646027df3201e4f5294873106208cbcfb8eddbc09ce87')

package() {
	cd "${srcdir}"
	make PREFIX=/usr DESTDIR=${pkgdir} install
}
