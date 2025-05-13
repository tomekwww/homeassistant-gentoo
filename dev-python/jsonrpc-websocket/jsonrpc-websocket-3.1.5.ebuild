# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A JSONRPC websocket client library for asyncio"
HOMEPAGE="http://github.com/emlove/jsonrpc-websocket"
SRC_URI="https://files.pythonhosted.org/packages/6c/b2/584df462e8a7791e6e3ef95fd5faab7ccc74252e7ee171c985947f7b7a11/jsonrpc-websocket-3.1.5.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/jsonrpc-base-2.1.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/async-timeout-4.0.0[${PYTHON_USEDEP}]
"
