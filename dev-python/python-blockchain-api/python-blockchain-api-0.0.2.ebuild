# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for interacting with blockchaininfo"
HOMEPAGE="https://github.com/nkgilley/python-blockchain-api"
SRC_URI="https://files.pythonhosted.org/packages/91/4a/99f5da5309d558ebf4383939a2031c0cffe36548bc7fd2001a2c5ed30f32/python-blockchain-api-0.0.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
