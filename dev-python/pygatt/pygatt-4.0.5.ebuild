# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python Bluetooth LE Low Energy and GATT Library"
HOMEPAGE="https://github.com/peplin/pygatt"
SRC_URI="https://files.pythonhosted.org/packages/10/1a/adf63764143593430e21500d34f00b8ff133f0c43462bcb3a11f35cfa3e3/pygatt-4.0.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pygatt-4.0.5"

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
