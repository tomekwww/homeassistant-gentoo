# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Simple Suplas OpenAPI async wrapper"
HOMEPAGE="https://github.com/mwegrzynek/asyncpysupla"
SRC_URI="https://files.pythonhosted.org/packages/76/28/4e56c84bfd1ece1fe26811cd92966ade64d97a5ea42efcb653d6df836dd1/asyncpysupla-0.0.5.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
"
