# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for Sesame Smartlock made by CANDY HOUSE Inc"
HOMEPAGE="https://github.com/yagami-cerberus/pysesame2"
SRC_URI="https://files.pythonhosted.org/packages/73/37/35abe8556f873388752bea83d998c2c18d7dd2de7a197bfcf4d8c876a505/pysesame2-1.0.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pysesame2-1.0.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
