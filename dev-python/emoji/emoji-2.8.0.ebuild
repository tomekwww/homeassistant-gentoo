# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Emoji for Python"
HOMEPAGE="https://github.com/carpedm20/emoji/"
SRC_URI="https://files.pythonhosted.org/packages/73/eb/335ac266110ecc112c28d0360012c863fe3781c5555be52eb69790037751/emoji-2.8.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/emoji-2.8.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
