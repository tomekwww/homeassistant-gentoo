# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Parser for SensorPush BLE devices"
HOMEPAGE="https://pypi.org/project/sensorpush-ble/"
SRC_URI="https://files.pythonhosted.org/packages/91/ad/d0ee145a765494427a6180725d8704e0b5aaefd29c1fd93b05fe8ac522e2/sensorpush_ble-1.9.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/sensorpush_ble-1.9.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/bleak-0.21.1[${PYTHON_USEDEP}]
	>=dev-python/bluetooth-data-tools-1.28.0[${PYTHON_USEDEP}]
	>=dev-python/bluetooth-sensor-state-data-1.8.0[${PYTHON_USEDEP}]
	>=dev-python/habluetooth-3.42.0[${PYTHON_USEDEP}]
	>=dev-python/sensor-state-data-2.0.2[${PYTHON_USEDEP}]
"
