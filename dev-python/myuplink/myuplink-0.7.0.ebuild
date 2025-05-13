# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="API package for myUplink"
HOMEPAGE="https://github.com/pajzo/myuplink"
SRC_URI="https://files.pythonhosted.org/packages/25/b4/4bdfe693bf8544f7de1168e0fb50bd04e68ee01197593956a98ac016f4e5/myuplink-0.7.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.7.3[${PYTHON_USEDEP}]
"
