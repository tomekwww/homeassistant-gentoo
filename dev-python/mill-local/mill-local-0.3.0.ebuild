# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python3 library to communicate with Mill heaters using local Gen 3 API"
HOMEPAGE="https://github.com/Danielhiversen/pyMillLocal"
SRC_URI="https://files.pythonhosted.org/packages/21/9f/24d91716412db2c6350afbbdf9a5d066de66d505f26a2e0c4ba5035f9fd8/mill_local-0.3.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/mill_local-0.3.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/async-timeout[${PYTHON_USEDEP}]
"

src_prepare() {
	touch requirements.txt
	distutils-r1_src_prepare
}

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
