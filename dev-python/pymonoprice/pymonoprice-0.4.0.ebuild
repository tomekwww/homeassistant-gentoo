# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for talking to Monoprice 6zone amplifier"
HOMEPAGE="https://github.com/etsinko/pymonoprice"
SRC_URI="https://files.pythonhosted.org/packages/70/61/f7bf7a480d47619761148e2968ff4583c119899d8053b78c123511568929/pymonoprice-0.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pymonoprice-0.4"

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
