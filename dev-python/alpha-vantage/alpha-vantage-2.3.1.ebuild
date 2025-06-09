# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python module to get stock data from the Alpha Vantage Api"
HOMEPAGE="https://github.com/RomelTorres/alpha_vantage"
SRC_URI="https://files.pythonhosted.org/packages/75/ea/28417504b1d0701626b76e150cf114b958c4b40d44da006303dc6a6dcce3/alpha_vantage-2.3.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/alpha_vantage-2.3.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
"
