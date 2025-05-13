# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python package for using igloohomes API"
HOMEPAGE="https://pypi.org/project/igloohome-api/"
SRC_URI="https://files.pythonhosted.org/packages/6e/37/ae50ef913203e3815b4ca24fdb832b0aaeb06aa77c577dca5ee113609a93/igloohome_api-0.1.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.11.10[${PYTHON_USEDEP}]
	>=dev-python/dacite-1.8.1[${PYTHON_USEDEP}]
	>=dev-python/pyjwt-2.10.1[${PYTHON_USEDEP}]
"
