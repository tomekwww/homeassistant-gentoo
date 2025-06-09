# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A GeoRSS client library"
HOMEPAGE="https://github.com/exxamalte/python-georss-client"
SRC_URI="https://files.pythonhosted.org/packages/f3/63/7f57a272f9f6c188d033087f6addf90dffaee0c56421893af6c1cf1d630e/georss_client-0.17.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/georss_client-0.17"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/haversine-2.8.1[${PYTHON_USEDEP}]
	>=dev-python/xmltodict-0.13.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.31.0[${PYTHON_USEDEP}]
	>=dev-python/dateparser-1.2.0[${PYTHON_USEDEP}]
"
