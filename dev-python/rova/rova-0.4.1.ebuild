# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="API wrapper for ROVA calendar"
HOMEPAGE="https://github.com/GidoHakvoort/rova"
SRC_URI="https://files.pythonhosted.org/packages/f8/f5/da4474c914bdf5a4079e04eefd3169276e9f97c910992c97cb3041a160d3/rova-0.4.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/rova-0.4.1"

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
