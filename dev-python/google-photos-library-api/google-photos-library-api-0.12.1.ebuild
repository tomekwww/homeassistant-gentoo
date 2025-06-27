# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python client library for Google Photos Library API"
HOMEPAGE="https://github.com/allenporter/python-google-photos-library-api"
SRC_URI="https://files.pythonhosted.org/packages/c8/15/848db5653c6bfccea61437cca355a54881b1165a25b15e69913ba21f86d5/google_photos_library_api-0.12.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/google_photos_library_api-0.12.1"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.7.3[${PYTHON_USEDEP}]
	>=dev-python/google-api-python-client-2.71.0[${PYTHON_USEDEP}]
	>=dev-python/google-auth-1.22.0[${PYTHON_USEDEP}]
	>=dev-python/mashumaro-3.12.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
