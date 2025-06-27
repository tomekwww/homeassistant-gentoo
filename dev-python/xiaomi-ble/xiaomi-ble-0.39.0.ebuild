# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Manage Xiaomi BLE devices"
HOMEPAGE="https://pypi.org/project/xiaomi-ble/"
SRC_URI="https://files.pythonhosted.org/packages/e0/c4/44d171f9163adcc80c726d9aa4bb4935621faefa708665f996cb26766597/xiaomi_ble-0.39.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/xiaomi_ble-0.39.0"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.10.0[${PYTHON_USEDEP}]
	>=dev-python/bleak-0.19.5[${PYTHON_USEDEP}]
	>=dev-python/bleak-retry-connector-2.13.0[${PYTHON_USEDEP}]
	>=dev-python/bluetooth-data-tools-0.3.1[${PYTHON_USEDEP}]
	>=dev-python/bluetooth-sensor-state-data-1.6.0[${PYTHON_USEDEP}]
	>=dev-python/cryptography-40.0.0[${PYTHON_USEDEP}]
	>=dev-python/home-assistant-bluetooth-1.9.2[${PYTHON_USEDEP}]
	>=dev-python/orjson-3.9.0[${PYTHON_USEDEP}]
	>=dev-python/pycryptodomex-3.19.1[${PYTHON_USEDEP}]
	>=dev-python/sensor-state-data-2.17.1[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
