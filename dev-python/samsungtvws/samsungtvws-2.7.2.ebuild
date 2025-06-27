# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Samsung Smart TV WS API wrapper"
HOMEPAGE="https://github.com/xchwarze/samsung-tv-ws-api"
SRC_URI="https://files.pythonhosted.org/packages/e4/c7/aa95581ad09e0ec2628f9fc5f80fbf6556b2a96af40937479bb252ed890b/samsungtvws-2.7.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/samsungtvws-2.7.2"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/websocket-client-0.57.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.21.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.8.1[${PYTHON_USEDEP}]
	>=dev-python/websockets-13.0.0[${PYTHON_USEDEP}]
	>=dev-python/cryptography-35.0.0[${PYTHON_USEDEP}]
	>=dev-python/py3rijndael-0.3.3[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
