# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="System Bridge Models"
HOMEPAGE="https://github.com/timmo001/system-bridge-models"
SRC_URI="https://files.pythonhosted.org/packages/aa/04/28abb1b673785d2138459fa0bdece1e363165751ced9603b9698aed81d40/systembridgemodels-4.2.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/systembridgemodels-4.2.4"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/incremental-24.7.2[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
