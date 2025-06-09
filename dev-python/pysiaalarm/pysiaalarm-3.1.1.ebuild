# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python package for creating a client that talks with SIAbased alarm systems"
HOMEPAGE="https://pypi.org/project/pysiaalarm/"
SRC_URI="https://files.pythonhosted.org/packages/1e/7f/d59ec1f7abe14d0a1d86f7f5df0bfcc76928a8c212c10921a1fd3c2dd6d4/pysiaalarm-3.1.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pysiaalarm-3.1.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/pycryptodome[${PYTHON_USEDEP}]
	dev-python/pytz[${PYTHON_USEDEP}]
"
