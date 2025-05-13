# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python wrapper for the MyPermobil API"
HOMEPAGE="https://github.com/IsakNyberg/MyPermobil-API"
SRC_URI="https://files.pythonhosted.org/packages/4d/93/a1af48896adc417062bd0ca96a196b7766d1d47265c97d410659f36aa4c4/mypermobil-0.1.8.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/aiocache[${PYTHON_USEDEP}]
"
