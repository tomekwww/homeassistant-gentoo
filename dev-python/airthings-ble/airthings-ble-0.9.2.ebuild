# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Manage Airthings BLE devices"
HOMEPAGE="https://github.com/Airthings/airthings-ble"
SRC_URI="https://files.pythonhosted.org/packages/da/60/0eb1c697358221d8120bb74cbf5ff638295b2741687b904235317b223495/airthings_ble-0.9.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/async-interrupt-1.1.1[${PYTHON_USEDEP}]
	>=dev-python/bleak-0.15.1[${PYTHON_USEDEP}]
	>=dev-python/bleak-retry-connector-1.8.0[${PYTHON_USEDEP}]
"
