# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="SensorPro BLE Devices"
HOMEPAGE="https://pypi.org/project/sensorpro-ble/"
SRC_URI="https://files.pythonhosted.org/packages/6b/dc/fceb14f2fba75a542660db276418ee190abbd396130298aa9bd9c2c9488a/sensorpro_ble-0.7.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/sensorpro_ble-0.7.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/bluetooth-data-tools-1.28.0[${PYTHON_USEDEP}]
	>=dev-python/bluetooth-sensor-state-data-1.8.0[${PYTHON_USEDEP}]
	>=dev-python/habluetooth-3.42.0[${PYTHON_USEDEP}]
	>=dev-python/sensor-state-data-2.6.0[${PYTHON_USEDEP}]
"
