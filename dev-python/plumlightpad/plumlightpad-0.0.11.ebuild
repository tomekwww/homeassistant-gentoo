# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python package that interacts with the Plum Lightpad"
HOMEPAGE="https://github.com/heathbar/plum-lightpad"
SRC_URI="https://files.pythonhosted.org/packages/c9/76/a2e5091fd1a61a356b0675bf4c922f306d7199ba3975bc8d27e96fb96590/plumlightpad-0.0.11.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/plumlightpad-0.0.11"

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
