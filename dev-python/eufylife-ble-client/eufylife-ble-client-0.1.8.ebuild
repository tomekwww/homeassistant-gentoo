# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A library to communicate with EufyLife Bluetooth devices"
HOMEPAGE="https://github.com/bdr99/eufylife-ble-client"
SRC_URI="https://files.pythonhosted.org/packages/33/ba/b0899fe34225fe182996a21d393de6914c6f4bcf22b21919be986df3fa5a/eufylife_ble_client-0.1.8.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/eufylife_ble_client-0.1.8"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/bleak-0.19.0[${PYTHON_USEDEP}]
	>=dev-python/bleak-retry-connector-2.3.0[${PYTHON_USEDEP}]
	>=dev-python/cryptography-39.0.0[${PYTHON_USEDEP}]
"
