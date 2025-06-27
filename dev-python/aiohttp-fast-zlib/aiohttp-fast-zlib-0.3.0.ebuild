# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Use the fastest installed zlib compatible library with aiohttp"
HOMEPAGE="https://pypi.org/project/aiohttp-fast-zlib/"
SRC_URI="https://files.pythonhosted.org/packages/0a/a6/982f3a013b42e914a2420631afcaecb729c49525cc6cc58e15d27ee4cb4b/aiohttp_fast_zlib-0.3.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiohttp_fast_zlib-0.3.0"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.9.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
