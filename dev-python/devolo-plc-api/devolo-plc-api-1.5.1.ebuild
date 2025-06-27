# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="devolo PLC devices in Python"
HOMEPAGE="https://pypi.org/project/devolo-plc-api/"
SRC_URI="https://files.pythonhosted.org/packages/94/df/64bb31926f3ad7676781eb31d9c91b28bc1306ec0749099da1a9980a2534/devolo_plc_api-1.5.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/devolo_plc_api-1.5.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/ifaddr-0.1.7[${PYTHON_USEDEP}]
	>=dev-python/httpx-0.21.0[${PYTHON_USEDEP}]
	>=dev-python/protobuf-4.22.0[${PYTHON_USEDEP}]
	>=dev-python/segno-1.5.2[${PYTHON_USEDEP}]
	>=dev-python/tenacity-8.3.0[${PYTHON_USEDEP}]
	>=dev-python/zeroconf-0.70.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
