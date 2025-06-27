# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An async GeoJSON client library for NSW Rural Fire Service Incidents"
HOMEPAGE="https://github.com/exxamalte/python-aio-geojson-nsw-rfs-incidents"
SRC_URI="https://files.pythonhosted.org/packages/42/2e/1b6db6b03cb5e0cad94f3961584730e9509869b53570e990e0637194bf74/aio_geojson_nsw_rfs_incidents-0.7.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aio_geojson_nsw_rfs_incidents-0.7"

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


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
