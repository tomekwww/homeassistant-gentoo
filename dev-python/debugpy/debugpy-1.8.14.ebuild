# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An implementation of the Debug Adapter Protocol for Python"
HOMEPAGE="https://aka.ms/debugpy"
SRC_URI="https://files.pythonhosted.org/packages/bd/75/087fe07d40f490a78782ff3b0a30e3968936854105487decdb33446d4b0e/debugpy-1.8.14.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/debugpy-1.8.14"

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
