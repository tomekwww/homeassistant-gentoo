# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An generic async GeoJSON client library"
HOMEPAGE="https://pypi.org/project/aio-geojson-generic-client/"
SRC_URI="https://files.pythonhosted.org/packages/37/86/d52bfba0d24405f2ac3a5d7e059daaa6db71886055b730d73bd3e333ee2f/aio_geojson_generic_client-0.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aio_geojson_generic_client-0.5"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aio-geojson-client-0.21.0[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.7.4[${PYTHON_USEDEP}]
	>=dev-python/geojson-3.1.0[${PYTHON_USEDEP}]
	>=dev-python/pytz-2019.1.0[${PYTHON_USEDEP}]
"
