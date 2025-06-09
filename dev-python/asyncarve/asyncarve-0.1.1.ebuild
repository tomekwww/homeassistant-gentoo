# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Simple Arve library"
HOMEPAGE="https://github.com/arvetech/asyncarve"
SRC_URI="https://files.pythonhosted.org/packages/65/15/3a1e63847bad1c6952cac71353e5231b1237c8b26b6c80eca298f51391b5/asyncarve-0.1.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/asyncarve-0.1.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/orjson-2.0.1[${PYTHON_USEDEP}]
	>=dev-python/mashumaro-3.12.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.9.3[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.9.4[${PYTHON_USEDEP}]
"
