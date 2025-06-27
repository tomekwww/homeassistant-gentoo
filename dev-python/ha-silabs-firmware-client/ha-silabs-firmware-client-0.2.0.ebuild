# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{13..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Home Assistant client for firmwares released with silabsfirmwarebuilder"
HOMEPAGE="https://pypi.org/project/ha-silabs-firmware-client/"
SRC_URI="https://files.pythonhosted.org/packages/fc/f3/c530fad5e9d9580ae2ce44c717c545a2da983490b9c2da396959223f0b68/ha_silabs_firmware_client-0.2.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/ha_silabs_firmware_client-0.2.0"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/yarl[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
