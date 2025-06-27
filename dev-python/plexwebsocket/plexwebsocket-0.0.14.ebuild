# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Support for issuing callbacks in response to Plex websocket updates"
HOMEPAGE="https://github.com/jjlawren/python-plexwebsocket/"
SRC_URI="https://files.pythonhosted.org/packages/dd/53/e37efeb5e29bc2c3036cb4b06257fd2b4699a88a7269cc2233337b93e5c9/plexwebsocket-0.0.14.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/plexwebsocket-0.0.14"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
