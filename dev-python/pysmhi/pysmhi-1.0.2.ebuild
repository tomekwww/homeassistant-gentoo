# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Retrieve open data from SMHI api"
HOMEPAGE="https://github.com/gjohansson-ST/pysmhi"
SRC_URI="https://files.pythonhosted.org/packages/20/7c/48445ef9b832afb5c8582a0226af876678eaa297cb24218e221c8b49418e/pysmhi-1.0.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.9.2[${PYTHON_USEDEP}]
"
