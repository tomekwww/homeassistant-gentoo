# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for interacting with Hydrawise sprinkler controllers"
HOMEPAGE="https://pypi.org/project/pydrawise/"
SRC_URI="https://files.pythonhosted.org/packages/bd/e1/c8b5091f53c5d9a171f5830548c9130a638cea1afa6bbb3b157ff88b1703/pydrawise-2025.3.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pydrawise-2025.3.0"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/apischema[${PYTHON_USEDEP}]
	dev-python/gql[${PYTHON_USEDEP}]
	dev-python/graphql-core[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
"
