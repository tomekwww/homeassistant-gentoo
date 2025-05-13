# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Calculate the geographical distance between 2 points with extreme accuracy"
HOMEPAGE="https://github.com/maurycyp/vincenty"
SRC_URI="https://files.pythonhosted.org/packages/c4/de/296372fde237fdda627fb6127a34689a3c1b25b6531a180060bf8e11457f/vincenty-0.1.4.tar.gz -> ${P}.gh.tar.gz"

LICENSE="Unlicense"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
