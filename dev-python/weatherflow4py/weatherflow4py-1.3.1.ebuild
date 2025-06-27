# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library used by Home Assistant to interact with the WeatherFlow REST API"
HOMEPAGE="https://pypi.org/project/weatherflow4py/"
SRC_URI="https://files.pythonhosted.org/packages/9a/1a/dd2ff33c7c756143b3156d75d924a6722bf066a9cc86c7f0bfa995f7b3f4/weatherflow4py-1.3.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/weatherflow4py-1.3.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.9.1[${PYTHON_USEDEP}]
	>=dev-python/dataclasses-json-0.6.3[${PYTHON_USEDEP}]
	<dev-python/dataclasses-json-0.7.0[${PYTHON_USEDEP}]
	>=dev-python/marshmallow-3.20.1[${PYTHON_USEDEP}]
	<dev-python/marshmallow-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/websockets-11.0.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
