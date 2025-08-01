# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=flit
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library to make use of transport information from opendatarmvde"
HOMEPAGE="https://github.com/cgtobi/PyRMVtransport"
SRC_URI="https://files.pythonhosted.org/packages/d0/1a/fbcb638a15872d59a158eed9da6f73f288ab535438eecf0abf3e0a90b1d4/PyRMVtransport-0.3.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/PyRMVtransport-0.3.3"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/async-timeout-4.0.0[${PYTHON_USEDEP}]
	dev-python/lxml[${PYTHON_USEDEP}]
	dev-python/httpx[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
