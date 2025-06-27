# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Models for storing and converting Bluetooth Sensor State Data"
HOMEPAGE="https://pypi.org/project/bluetooth-sensor-state-data/"
SRC_URI="https://files.pythonhosted.org/packages/04/c4/393f68816657786c4b19f6e4856ced892457321acb67e8bf7d91a76e9a98/bluetooth_sensor_state_data-1.9.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/bluetooth_sensor_state_data-1.9.0"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/bluetooth-data-tools-1.28.0[${PYTHON_USEDEP}]
	>=dev-python/habluetooth-3.42.0[${PYTHON_USEDEP}]
	>=dev-python/sensor-state-data-2.0.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
