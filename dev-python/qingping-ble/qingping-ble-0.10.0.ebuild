# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Qingping BLE support"
HOMEPAGE="https://github.com/bluetooth-devices/qingping-ble"
SRC_URI="https://files.pythonhosted.org/packages/a8/3b/2022a78b362fec07596ab54aa6d1c120094b50f32e4f5c539b14958a9f95/qingping_ble-0.10.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/qingping_ble-0.10.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/bluetooth-data-tools-0.1.2[${PYTHON_USEDEP}]
	>=dev-python/bluetooth-sensor-state-data-1.5.0[${PYTHON_USEDEP}]
	>=dev-python/sensor-state-data-2.1.2[${PYTHON_USEDEP}]
"
