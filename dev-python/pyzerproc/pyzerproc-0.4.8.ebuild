# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Async library to control Zerproc Bluetooth LED smart string lights"
HOMEPAGE="https://github.com/emlove/pyzerproc"
SRC_URI="https://files.pythonhosted.org/packages/5d/46/8bae873c87e83e122a38a76fb142b8bcbb67ed682974d25929f19f7bfcbe/pyzerproc-0.4.8.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyzerproc-0.4.8"

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
