# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Bleak backend of ESPHome"
HOMEPAGE="https://pypi.org/project/bleak-esphome/"
SRC_URI="https://files.pythonhosted.org/packages/d5/e9/2c66de2f458a1d703061867d27278fde1ffaf507d3e4955c6ac4d5eae5f0/bleak_esphome-2.15.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/bleak_esphome-2.15.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aioesphomeapi-30.1.0[${PYTHON_USEDEP}]
	>=dev-python/bleak-0.21.1[${PYTHON_USEDEP}]
	>=dev-python/bleak-retry-connector-3.8.0[${PYTHON_USEDEP}]
	>=dev-python/bluetooth-data-tools-1.18.0[${PYTHON_USEDEP}]
	>=dev-python/habluetooth-3.42.0[${PYTHON_USEDEP}]
	>=dev-python/lru-dict-1.2.0[${PYTHON_USEDEP}]
"
