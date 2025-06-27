# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for Ayla IoT products"
HOMEPAGE="https://github.com/rewardone/ayla-iot-unofficial"
SRC_URI="https://files.pythonhosted.org/packages/10/6e/d9d55d80b9b0eb48a17c97a190aeb2daa57f5f0b388e0b74b4dd5b566e54/ayla_iot_unofficial-1.4.7.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/ayla_iot_unofficial-1.4.7"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.8.4[${PYTHON_USEDEP}]
	>=dev-python/requests-2.31.0[${PYTHON_USEDEP}]
	>=dev-python/ujson-5.8.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
