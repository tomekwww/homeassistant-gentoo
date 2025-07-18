# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Pythonbased socket client for Global Cache GC100 digital IO interface"
HOMEPAGE="https://github.com/davegravy/python-gc100"
SRC_URI="https://files.pythonhosted.org/packages/4f/e3/bdee12ea9145460faeb0759cf71d9ab0c55550ca4ef25ecf98aa98618ba2/python-gc100-1.0.3a0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/python-gc100-1.0.3a0"

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
