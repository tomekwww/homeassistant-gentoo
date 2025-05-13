# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An async GeoJSON client library for GeoNet NZ Volcanic Alert Level feed"
HOMEPAGE="https://github.com/exxamalte/python-aio-geojson-geonetnz-volcano"
SRC_URI="https://files.pythonhosted.org/packages/52/ae/15e0e8e6024e5a4c8877e37e0be620d10e7c393e5a96bf7340050fdeab26/aio_geojson_geonetnz_volcano-0.9.tar.gz -> ${P}.gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aio-geojson-client-0.20.0[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.7.4[${PYTHON_USEDEP}]
	>=dev-python/pytz-2019.1.0[${PYTHON_USEDEP}]
"
