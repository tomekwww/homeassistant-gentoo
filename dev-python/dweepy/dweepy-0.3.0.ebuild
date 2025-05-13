# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Dweepy is a Python client for dweetio"
HOMEPAGE="https://github.com/paddycarey/dweepy"
SRC_URI="https://files.pythonhosted.org/packages/1b/da/a810d2a0fb08d7bf715363538a380072a5158ac40b2084992633ba2b85d9/dweepy-0.3.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
