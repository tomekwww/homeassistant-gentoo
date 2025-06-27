# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Unofficial package to access Bring shopping lists API"
HOMEPAGE="https://pypi.org/project/bring-api/"
SRC_URI="https://files.pythonhosted.org/packages/f9/01/b0f9622bda72bf5ba039abedaa5105db4ac105b1f8c36dfa607720c8eacd/bring_api-1.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/bring_api-1.1.0"

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
