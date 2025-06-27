# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="AEMET OpenData Rest API library"
HOMEPAGE="https://pypi.org/project/AEMET-OpenData/"
SRC_URI="https://files.pythonhosted.org/packages/76/3e/0776af0bb8b7611506e075f25cc95f221f07c00acdf8df7dcc29f61e9668/aemet_opendata-0.6.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aemet_opendata-0.6.4"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/geopy[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
