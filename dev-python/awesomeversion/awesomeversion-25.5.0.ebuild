# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="One version package to rule them all One version package to find them One version package to bring them all and in the darkness bind them"
HOMEPAGE="https://pypi.org/project/awesomeversion/"
SRC_URI="https://files.pythonhosted.org/packages/5e/95/bd19ef0ef6735bd7131c0310f71432ea5fdf3dc2b3245a262d1f34bae55e/awesomeversion-25.5.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/awesomeversion-25.5.0"

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
