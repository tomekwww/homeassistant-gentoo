# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous API Library to work with Elmax devices"
HOMEPAGE="https://github.com/albertogeniola/elmax-api"
SRC_URI="https://files.pythonhosted.org/packages/81/6f/b9fac545ba3d4f82c6535077d74c027d9b1045160960323960065fc1d589/elmax_api-0.0.6.4rc0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/elmax_api-0.0.6.4rc0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/pyjwt-1.7.1[${PYTHON_USEDEP}]
	>=dev-python/httpx-0.18.0[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.6.3[${PYTHON_USEDEP}]
	>=dev-python/websockets-13.0.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
