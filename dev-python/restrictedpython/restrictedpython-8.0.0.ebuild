# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="RestrictedPython is a defined subset of the Python language which allows to provide a program input into a trusted environment"
HOMEPAGE="https://github.com/zopefoundation/RestrictedPython"
SRC_URI="https://files.pythonhosted.org/packages/76/f3/3cfd684abf456f536a842e4fabe1ca360a8e94d1fc329f261c34c1d98825/restrictedpython-8.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/restrictedpython-8.0"

LICENSE="ZPL"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
