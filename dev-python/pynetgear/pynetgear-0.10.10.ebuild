# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Access Netgear routers using their SOAP API"
HOMEPAGE="http://github.com/MatMaul/pynetgear"
SRC_URI="https://files.pythonhosted.org/packages/0d/1b/925d4bf0b8e45e9898722a3fdc6e62b6d73a17dca9689f8a0f74884fcca2/pynetgear-0.10.10.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pynetgear-0.10.10"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.0.0[${PYTHON_USEDEP}]
"

src_prepare() {
	touch requirements.txt
	distutils-r1_src_prepare
}


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
