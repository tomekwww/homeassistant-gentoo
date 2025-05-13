# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library to connect to and interact with Flic buttons"
HOMEPAGE="https://github.com/soldag/pyflic"
SRC_URI="https://files.pythonhosted.org/packages/e3/07/89cf7f0636fb47a0253fa850f8c4b4a5a3a3e69227889d53e8d1e8b21aef/pyflic-2.0.4.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
