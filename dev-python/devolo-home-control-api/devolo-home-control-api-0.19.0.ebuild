# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="devolo Home Control API in Python"
HOMEPAGE="https://pypi.org/project/devolo-home-control-api/"
SRC_URI="https://files.pythonhosted.org/packages/ac/ae/aa94446605898d5a5ff87b6cfd228d37933f4d4b40faf3157f5277590d3f/devolo_home_control_api-0.19.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/devolo_home_control_api-0.19.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/python-dateutil-2.8.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.4.0[${PYTHON_USEDEP}]
	>=dev-python/websocket-client-0.58.0[${PYTHON_USEDEP}]
	>=dev-python/zeroconf-0.38.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
