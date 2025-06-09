# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Various Python utility functions"
HOMEPAGE="https://pypi.org/project/bx-py-utils/"
SRC_URI="https://files.pythonhosted.org/packages/64/48/49e8cf2ffef4ea2eb5eb6f8de373694ee32951af35cbe00cd58af7c15825/bx_py_utils-108.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/bx_py_utils-108"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
