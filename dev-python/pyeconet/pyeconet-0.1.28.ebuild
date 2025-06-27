# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Interface to the unofficial EcoNet API"
HOMEPAGE="https://github.com/w1ll1am23/pyeconet"
SRC_URI="https://files.pythonhosted.org/packages/ef/8d/f4d645527d42055253f4269a40fb8235de0b8700a9bc8ad4fb5450489287/pyeconet-0.1.28.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyeconet-0.1.28"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.11.11[${PYTHON_USEDEP}]
	>=dev-python/paho-mqtt-2.1.0[${PYTHON_USEDEP}]
	<dev-python/paho-mqtt-3.0.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
