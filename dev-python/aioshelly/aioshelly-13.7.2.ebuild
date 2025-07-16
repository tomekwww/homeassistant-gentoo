# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous library to control Shelly devices"
HOMEPAGE="https://pypi.org/project/aioshelly/"
SRC_URI="https://files.pythonhosted.org/packages/9d/37/8229f866803d2af3d18581a10170ab45cfd210549a300f140c30235751e2/aioshelly-13.7.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aioshelly-13.7.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.11.1[${PYTHON_USEDEP}]
	>=dev-python/bluetooth-data-tools-1.28.0[${PYTHON_USEDEP}]
	>=dev-python/habluetooth-3.42.0[${PYTHON_USEDEP}]
	>=dev-python/orjson-3.8.1[${PYTHON_USEDEP}]
	dev-python/yarl[${PYTHON_USEDEP}]
"

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
