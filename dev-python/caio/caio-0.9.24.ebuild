# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous file IO for Linux MacOS or Windows"
HOMEPAGE="https://pypi.org/project/caio/"
SRC_URI="https://files.pythonhosted.org/packages/98/04/ec9b6864135032fd454f6cd1d9444e0bb01040196ad0cd776c061fc92c6b/caio-0.9.24.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/caio-0.9.24"

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
