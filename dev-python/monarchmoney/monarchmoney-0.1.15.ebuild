# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Monarch Money API for Python"
HOMEPAGE="https://github.com/hammem/monarchmoney"
SRC_URI="https://files.pythonhosted.org/packages/e4/fd/1ddc7ca4ff461c2420dbc08bfff7f6672815c7ca49e871338b1839d7b898/monarchmoney-0.1.15.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/monarchmoney-0.1.15"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.8.4[${PYTHON_USEDEP}]
	>=dev-python/gql-3.4.0[${PYTHON_USEDEP}]
	>=dev-python/oathtool-2.3.1[${PYTHON_USEDEP}]
"
