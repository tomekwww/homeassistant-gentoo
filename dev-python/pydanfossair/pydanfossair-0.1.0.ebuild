# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python interface for Danfoss Air HRV systems"
HOMEPAGE="https://github.com/JonasPed/pydanfoss-air"
SRC_URI="https://files.pythonhosted.org/packages/68/43/072f8d2a8d5877983660b9892ab5c00ffa5d53cbaf81eb0e2ba1a8f3bc15/pydanfossair-0.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pydanfossair-0.1.0"

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
