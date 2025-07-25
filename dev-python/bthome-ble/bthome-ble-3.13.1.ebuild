# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="BThome BLE support"
HOMEPAGE="https://pypi.org/project/bthome-ble/"
SRC_URI="https://files.pythonhosted.org/packages/7c/92/deeabf584d0f7e4accfaeada7c0bdf66abd8f22451635dc4eed04e350da3/bthome_ble-3.13.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/bthome_ble-3.13.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/bluetooth-data-tools-0.1.2[${PYTHON_USEDEP}]
	>=dev-python/bluetooth-sensor-state-data-1.6.1[${PYTHON_USEDEP}]
	>=dev-python/cryptography-40.0.0[${PYTHON_USEDEP}]
	>=dev-python/habluetooth-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/sensor-state-data-2.16.1[${PYTHON_USEDEP}]
"

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
