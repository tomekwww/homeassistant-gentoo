# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Yet another Python color library"
HOMEPAGE="https://pypi.org/project/colorzero/"
SRC_URI="https://files.pythonhosted.org/packages/b3/ca/688824a06e8c4d04c7d2fd2af2d8da27bed51af20ee5f094154e1d680334/colorzero-2.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/setuptools[${PYTHON_USEDEP}]
"
