# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Manage Govee BLE devices"
HOMEPAGE="https://pypi.org/project/govee-ble/"
SRC_URI="https://files.pythonhosted.org/packages/f3/ac/99b86f48eb585d6c8998a82351cf73a1ca693e5cb696cdfa1cdb0ea2f580/govee_ble-0.44.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/govee_ble-0.44.0"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/bluetooth-data-tools-0.1.2[${PYTHON_USEDEP}]
	>=dev-python/bluetooth-sensor-state-data-1.5.0[${PYTHON_USEDEP}]
	>=dev-python/cryptography-42.0.0[${PYTHON_USEDEP}]
	>=dev-python/home-assistant-bluetooth-1.3.0[${PYTHON_USEDEP}]
	>=dev-python/sensor-state-data-2.18.0[${PYTHON_USEDEP}]
"
