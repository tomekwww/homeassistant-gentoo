# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for interacting with etherscanio"
HOMEPAGE="https://github.com/nkgilley/python-etherscan-api"
SRC_URI="https://files.pythonhosted.org/packages/52/06/81d93111e7acdbb1da242eddd7e10a5811e627e7d86d756ccd92fe55c59d/python-etherscan-api-0.0.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/python-etherscan-api-0.0.3"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
