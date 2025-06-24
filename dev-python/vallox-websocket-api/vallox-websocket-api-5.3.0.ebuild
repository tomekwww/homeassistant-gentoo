# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Vallox WebSocket API"
HOMEPAGE="https://github.com/yozik04/vallox_websocket_api"
SRC_URI="https://files.pythonhosted.org/packages/7f/a0/ce722745b830c7d88531d9eb6d151b31b58a7a92e092ff32be06472f1052/vallox_websocket_api-5.3.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/vallox_websocket_api-5.3.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/websockets-9.1.0[${PYTHON_USEDEP}]
	<dev-python/construct-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/construct-2.9.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.7.0[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
"
