# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python wrapper for getting weather data from AccuWeather API"
HOMEPAGE="https://pypi.org/project/accuweather/"
SRC_URI="https://files.pythonhosted.org/packages/26/db/ea7ae388c61b9500074ab3870f6e8f3fd25c6e3e493ed79d9c0f10efd47d/accuweather-4.2.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/accuweather-4.2.0"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.9.4[${PYTHON_USEDEP}]
	dev-python/orjson[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
