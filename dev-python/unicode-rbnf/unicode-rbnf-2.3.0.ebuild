# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Rulebased number formatting using Unicode CLDR data"
HOMEPAGE="https://pypi.org/project/unicode-rbnf/"
SRC_URI="https://files.pythonhosted.org/packages/ca/2d/e901fbe434971834eb8249865e27b04685ff0b61ffb4659458295d41c1d7/unicode_rbnf-2.3.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
