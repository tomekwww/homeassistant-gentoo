# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Fast ISO8601 date time parser for Python written in C"
HOMEPAGE="https://github.com/closeio/ciso8601"
SRC_URI="https://files.pythonhosted.org/packages/09/e9/d83711081c997540aee59ad2f49d81f01d33e8551d766b0ebde346f605af/ciso8601-2.3.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
