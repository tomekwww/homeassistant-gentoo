# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python interface to the Met Offices Datapoint API"
HOMEPAGE="https://pypi.org/project/datapoint/"
SRC_URI="https://files.pythonhosted.org/packages/e4/c3/9fcb0b93ac9ce2aa363bcfe53fbec0ef7a7a11ffd27fc595cdfd87e2139d/datapoint-0.12.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/datapoint-0.12.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/appdirs-1.0.0[${PYTHON_USEDEP}]
	<dev-python/appdirs-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/geojson-3.0.0[${PYTHON_USEDEP}]
	<dev-python/geojson-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.20.0[${PYTHON_USEDEP}]
	<dev-python/requests-3.0.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
