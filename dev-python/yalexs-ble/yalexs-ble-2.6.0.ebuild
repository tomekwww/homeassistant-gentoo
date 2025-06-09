# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Bluetooth control of Yale and August locks"
HOMEPAGE="https://pypi.org/project/yalexs-ble/"
SRC_URI="https://files.pythonhosted.org/packages/c4/bb/77651df8850263c5e78ad96a044ce1e12a05395a05d09346a1c9652ca71d/yalexs_ble-2.6.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/yalexs_ble-2.6.0"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/async-interrupt-1.1.1[${PYTHON_USEDEP}]
	>=dev-python/bleak-0.19.0[${PYTHON_USEDEP}]
	>=dev-python/bleak-retry-connector-3.4.0[${PYTHON_USEDEP}]
	>=dev-python/cryptography-38.0.0[${PYTHON_USEDEP}]
	>=dev-python/lru-dict-1.1.4[${PYTHON_USEDEP}]
"
