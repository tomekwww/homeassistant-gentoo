# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An async GeoRSS client library"
HOMEPAGE="https://github.com/exxamalte/python-aio-georss-client"
SRC_URI="https://files.pythonhosted.org/packages/7a/65/3342f3137b6353a0cfd72e8883afc16393ac2212e9d751e9712a1270cafb/aio_georss_client-0.13.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aio_georss_client-0.13"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.7.4[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/haversine-2.8.1[${PYTHON_USEDEP}]
	>=dev-python/xmltodict-0.13.0[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.9.0[${PYTHON_USEDEP}]
"
