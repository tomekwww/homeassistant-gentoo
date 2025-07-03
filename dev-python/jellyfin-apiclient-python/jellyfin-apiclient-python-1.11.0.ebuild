# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API client for Jellyfin"
HOMEPAGE="https://pypi.org/project/jellyfin-apiclient-python/"
SRC_URI="https://files.pythonhosted.org/packages/c2/b0/61cacc2261f6b1972e4a53d142857def8b4d3b6fbd1481a2257b26e31029/jellyfin_apiclient_python-1.11.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/jellyfin_apiclient_python-1.11.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/urllib3[${PYTHON_USEDEP}]
	dev-python/websocket-client[${PYTHON_USEDEP}]
	dev-python/certifi[${PYTHON_USEDEP}]
"

src_prepare() {
    sed -i '3i\build-backend = "setuptools.build_meta"\n' pyproject.toml || die
    distutils-r1_src_prepare
}

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
