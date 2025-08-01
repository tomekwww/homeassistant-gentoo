# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An asynchronous library to use Switchbot API"
HOMEPAGE="https://pypi.org/project/switchbot-api/"
SRC_URI="https://files.pythonhosted.org/packages/43/c1/adce3097208277930d3f3a5a4f3ddafe95ed20604e6c4d34627c8a076c51/switchbot_api-2.5.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/switchbot_api-2.5.0"

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
