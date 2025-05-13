# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for interacting with ripplecom"
HOMEPAGE="https://github.com/nkgilley/python-ripple-api"
SRC_URI="https://files.pythonhosted.org/packages/47/23/33832ff5e0e2e8108f9fb425490fbe9f1fec501c7d4931d792ec24516f31/python-ripple-api-0.0.3.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
