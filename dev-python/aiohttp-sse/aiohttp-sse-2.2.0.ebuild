# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Serversent events  support for aiohttp"
HOMEPAGE="https://github.com/aio-libs/aiohttp_sse/"
SRC_URI="https://files.pythonhosted.org/packages/80/df/4ddb30e689695fd91cf41c072e154061120ed166e8baf6c9a0020f27dffc/aiohttp-sse-2.2.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiohttp-sse-2.2.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.0.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
