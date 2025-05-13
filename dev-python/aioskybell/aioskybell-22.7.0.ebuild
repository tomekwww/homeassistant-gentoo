# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Skybell HD Python library running on Python 3"
HOMEPAGE="https://github.com/tkdrob/aioskybell"
SRC_URI="https://files.pythonhosted.org/packages/92/f3/23d7b255e87f76aef3e68652599576f21f27640219589522f4bfa3931665/aioskybell-22.7.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.6.1[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiofiles-0.3.0[${PYTHON_USEDEP}]
"
