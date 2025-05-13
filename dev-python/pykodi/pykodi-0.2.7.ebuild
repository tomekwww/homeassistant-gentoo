# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An async python interface for Kodi over JSONRPC"
HOMEPAGE="https://github.com/OnFreund/PyKodi"
SRC_URI="https://files.pythonhosted.org/packages/a3/a9/3dfebd3cd15b7119b89a6b5b6e7382feef14118fb4a38aa918fd8d9fbffd/pykodi-0.2.7.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/jsonrpc-async-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/jsonrpc-websocket-3.0.0[${PYTHON_USEDEP}]
	dev-python/aiohttp[${PYTHON_USEDEP}]
"
