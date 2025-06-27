# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="API wrapper to communicate locally with SolarEdge Inverters"
HOMEPAGE="https://github.com/drobtravels/solaredge-local"
SRC_URI="https://files.pythonhosted.org/packages/51/96/c24bc40ba8848ba2bc3c9894edcf46579dd6a36d39b73ab378d44eac7790/solaredge_local-0.2.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/solaredge_local-0.2.3"

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
