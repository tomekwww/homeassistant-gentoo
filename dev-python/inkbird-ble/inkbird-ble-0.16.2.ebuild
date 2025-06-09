# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Parser for INKBIRD BLE devices"
HOMEPAGE="https://pypi.org/project/inkbird-ble/"
SRC_URI="https://files.pythonhosted.org/packages/96/b0/86e83a4480bc6d3ad2deb2167c77e29071c4af5334cbd5b574cb9b987270/inkbird_ble-0.16.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/inkbird_ble-0.16.2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/bleak-retry-connector-1.20.0[${PYTHON_USEDEP}]
	>=dev-python/bluetooth-data-tools-1.28.0[${PYTHON_USEDEP}]
	>=dev-python/bluetooth-sensor-state-data-1.8.0[${PYTHON_USEDEP}]
	>=dev-python/habluetooth-3.42.0[${PYTHON_USEDEP}]
	>=dev-python/sensor-state-data-2.2.0[${PYTHON_USEDEP}]
"
