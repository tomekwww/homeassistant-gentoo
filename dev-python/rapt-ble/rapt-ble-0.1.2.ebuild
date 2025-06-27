# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Parser for the RAPT Pill hydrometer BLE packets"
HOMEPAGE="https://github.com/sairon/rapt-ble"
SRC_URI="https://files.pythonhosted.org/packages/70/5f/f6002d3bef357b27d86e3a20fb5cf7a7436cecc5412871ef213bb2ec3a9c/rapt_ble-0.1.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/rapt_ble-0.1.2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/bluetooth-data-tools-0.3.1[${PYTHON_USEDEP}]
	>=dev-python/bluetooth-sensor-state-data-1.6.1[${PYTHON_USEDEP}]
	>=dev-python/home-assistant-bluetooth-1.9.2[${PYTHON_USEDEP}]
	>=dev-python/sensor-state-data-2.13.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
