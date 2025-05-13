# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Yet another implementation for the positional numeral system using 36 as the radix"
HOMEPAGE="https://github.com/tonyseek/python-base36"
SRC_URI="https://files.pythonhosted.org/packages/7e/63/e75b652d027bb394b67a61d232fd2f10d032ec3b8658dd81c593a9dfc25e/base36-0.1.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
