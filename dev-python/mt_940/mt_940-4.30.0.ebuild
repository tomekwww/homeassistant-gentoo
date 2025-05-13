# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A library to parse MT940 files and returns smart Python collections for statistics and manipulation"
HOMEPAGE="https://github.com/WoLpH/mt940"
SRC_URI="https://files.pythonhosted.org/packages/c4/bd/11a984d1896516b4cb45df899b1f9d520df1a5e51a7f5b92ad35f5c2a560/mt-940-4.30.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
