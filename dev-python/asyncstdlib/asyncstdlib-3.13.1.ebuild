# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=flit
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="The missing async toolbox"
HOMEPAGE="https://pypi.org/project/asyncstdlib/"
SRC_URI="https://files.pythonhosted.org/packages/50/e1/72e388631c85233a2fd890d024fc20a8a9961dbba8614d78266636218f1f/asyncstdlib-3.13.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/asyncstdlib-3.13.1"

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
