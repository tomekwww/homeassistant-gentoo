# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A pure python module to connect to a pilight daemon to send and receive commands"
HOMEPAGE="https://github.com/DavidLP/pilight"
SRC_URI="https://files.pythonhosted.org/packages/be/24/bee3980c42d5f82f1cb86e7661fce1acbc19e506a6327f993e12fb98378a/pilight-0.1.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pilight-0.1.1"

LICENSE="MIT"
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
