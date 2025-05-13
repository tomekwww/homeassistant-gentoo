# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Use the fastest installed zlib compatible library with aiohttp"
HOMEPAGE="https://pypi.org/project/aiohttp-fast-zlib/"
SRC_URI="https://files.pythonhosted.org/packages/d7/73/c93543264f745202a6fe78ad8ddb7c13a9d3e3ea47cde26501d683bd46a4/aiohttp_fast_zlib-0.2.3.tar.gz -> ${P}.gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.9.0[${PYTHON_USEDEP}]
"
