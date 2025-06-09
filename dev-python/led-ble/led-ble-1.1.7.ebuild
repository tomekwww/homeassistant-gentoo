# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Control a wide range of LED BLE devices"
HOMEPAGE="https://pypi.org/project/led-ble/"
SRC_URI="https://files.pythonhosted.org/packages/1b/62/e12c816f259aaa08bb9c08a5f686253ad7593b2967e5140df4f4f8bdf450/led_ble-1.1.7.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/led_ble-1.1.7"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/bleak-0.22.0[${PYTHON_USEDEP}]
	>=dev-python/bleak-retry-connector-2.3.0[${PYTHON_USEDEP}]
	>=dev-python/flux-led-0.28.32[${PYTHON_USEDEP}]
"
