# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Enhance the standard unittest package with features for testing asyncio libraries"
HOMEPAGE="https://github.com/Martiusweb/asynctest/"
SRC_URI="https://files.pythonhosted.org/packages/0c/0f/6056f4435923d2f8c89ac9ef2d18506a569348d8f9cc827b0dd7a4c8acc4/asynctest-0.13.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/asynctest-0.13.0"

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
