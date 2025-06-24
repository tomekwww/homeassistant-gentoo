# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Various Python utility functions"
HOMEPAGE="https://pypi.org/project/bx-py-utils/"
SRC_URI="https://files.pythonhosted.org/packages/5e/6e/cbe8f4dca7cb76b576285f7c9683fc572cf4132c5d834dc2c623eb7b277d/bx_py_utils-109.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/bx_py_utils-109"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
