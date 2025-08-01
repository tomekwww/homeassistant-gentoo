# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous Python client for getting PoolSense data"
HOMEPAGE="https://github.com/haemishkyd/poolsense"
SRC_URI="https://files.pythonhosted.org/packages/3c/1a/ac1a7dfbb5fec16f1ad9b2b6f5f5b6b2bd22bb356063355eee8fc49df1ba/poolsense-0.0.8.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/poolsense-0.0.8"

LICENSE="MIT"
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
