# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="efficient arrays of booleans  C extension"
HOMEPAGE="https://github.com/ilanschnell/bitarray"
SRC_URI="https://files.pythonhosted.org/packages/0d/c7/a85f206e6b2fddb93964efe53685ad8da7d856e6975b005ed6a88f25b010/bitarray-2.9.3.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
