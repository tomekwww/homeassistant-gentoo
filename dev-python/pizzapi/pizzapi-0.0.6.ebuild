# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python wrapper for the Dominos Pizza API"
HOMEPAGE="https://github.com/aluttik/pizzapi"
SRC_URI="https://files.pythonhosted.org/packages/72/d5/89ccc0c917d07b8e5dfa3a8e500818bebe04d34842e9b90c76c6ef06a2ad/pizzapi-0.0.6.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
