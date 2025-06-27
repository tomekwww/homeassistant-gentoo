# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A client for Honeywells USbased cloud devices"
HOMEPAGE="https://github.com/mkmer/AIOSomecomfort"
SRC_URI="https://files.pythonhosted.org/packages/d6/b2/ea798c493923e9f9a16c71f5a9b656b8af18fb7b39afe488bd5ed5fd8dcf/aiosomecomfort-0.0.32.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiosomecomfort-0.0.32"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.8.0[${PYTHON_USEDEP}]
	dev-python/prettytable[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
