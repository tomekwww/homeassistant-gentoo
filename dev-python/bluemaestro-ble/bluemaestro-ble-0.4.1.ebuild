# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="bluemaestro BLE devices"
HOMEPAGE="https://pypi.org/project/bluemaestro-ble/"
SRC_URI="https://files.pythonhosted.org/packages/ca/82/febc5b1b95ce8ba4a0adc684790e362159d3c8307b3fd35f3b43700d19ac/bluemaestro_ble-0.4.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/bluemaestro_ble-0.4.1"

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
	>=dev-python/sensor-state-data-2.6.0[${PYTHON_USEDEP}]
"
