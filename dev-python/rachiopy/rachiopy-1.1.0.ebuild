# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python module for the Rachio API"
HOMEPAGE="https://github.com/rfverbruggen/rachiopy"
SRC_URI="https://files.pythonhosted.org/packages/3a/b5/e98fd955ad60b32e547feaeeeec867755de5ef59b2a1d69c030d78fe3672/RachioPy-1.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/RachioPy-1.1.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
"
