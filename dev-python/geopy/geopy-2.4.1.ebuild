# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python Geocoding Toolbox"
HOMEPAGE="https://github.com/geopy/geopy"
SRC_URI="https://files.pythonhosted.org/packages/0e/fd/ef6d53875ceab72c1fad22dbed5ec1ad04eb378c2251a6a8024bad890c3b/geopy-2.4.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/geopy-2.4.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/geographiclib-1.52.0[${PYTHON_USEDEP}]
	<dev-python/geographiclib-3.0.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
