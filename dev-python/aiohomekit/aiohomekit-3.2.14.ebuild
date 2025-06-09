# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An asyncio HomeKit client"
HOMEPAGE="https://pypi.org/project/aiohomekit/"
SRC_URI="https://files.pythonhosted.org/packages/d4/d4/0c39204f5c5a260683e6c601cb33485af53a219fec38e87d2f9ff269fd62/aiohomekit-3.2.14.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiohomekit-3.2.14"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiocoap-0.4.5[${PYTHON_USEDEP}]
	>=dev-python/aiohappyeyeballs-2.3.0[${PYTHON_USEDEP}]
	>=dev-python/async-interrupt-1.1.1[${PYTHON_USEDEP}]
	>=dev-python/bleak-0.22.0[${PYTHON_USEDEP}]
	>=dev-python/bleak-retry-connector-2.9.0[${PYTHON_USEDEP}]
	<dev-python/chacha20poly1305-0.0.4[${PYTHON_USEDEP}]
	>=dev-python/chacha20poly1305-0.0.3[${PYTHON_USEDEP}]
	>=dev-python/chacha20poly1305-reuseable-0.12.1[${PYTHON_USEDEP}]
	>=dev-python/commentjson-0.9.0[${PYTHON_USEDEP}]
	<dev-python/commentjson-0.10.0[${PYTHON_USEDEP}]
	>=dev-python/cryptography-2.9.2[${PYTHON_USEDEP}]
	>=dev-python/orjson-3.7.8[${PYTHON_USEDEP}]
	>=dev-python/zeroconf-0.132.2[${PYTHON_USEDEP}]
"
