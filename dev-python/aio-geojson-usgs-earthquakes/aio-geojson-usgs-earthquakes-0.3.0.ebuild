# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An async GeoJSON client library for the US Geological Survey Earthquake Hazards Program"
HOMEPAGE="https://github.com/exxamalte/python-aio-geojson-usgs-earthquakes"
SRC_URI="https://files.pythonhosted.org/packages/f0/ba/6d8da1ef4b49a6c080309a30474458c14786b3152e4a69b6074e4a91cba5/aio_geojson_usgs_earthquakes-0.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aio_geojson_usgs_earthquakes-0.3"

LICENSE="BSD"
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
