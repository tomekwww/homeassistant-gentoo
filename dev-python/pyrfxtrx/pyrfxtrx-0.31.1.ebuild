# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="a library to communicate with the RFXtrx family of devices"
HOMEPAGE="https://github.com/Danielhiversen/pyRFXtrx"
SRC_URI="https://files.pythonhosted.org/packages/cd/a7/6e38c0b57396d533e04fd933de6ce11640a372ffe09c77fd408bcd7197d5/pyrfxtrx-0.31.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyrfxtrx-0.31.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/pyserial-2.7.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
