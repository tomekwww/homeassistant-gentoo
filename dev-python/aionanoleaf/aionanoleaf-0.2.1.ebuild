# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Async Python package for the Nanoleaf API"
HOMEPAGE="https://github.com/milanmeu/aionanoleaf"
SRC_URI="https://files.pythonhosted.org/packages/7e/b1/5bc4116e8fdbd7aa8d1660f9a9dbe3a794f7acb50dbdb5588660345cc52e/aionanoleaf-0.2.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
"
