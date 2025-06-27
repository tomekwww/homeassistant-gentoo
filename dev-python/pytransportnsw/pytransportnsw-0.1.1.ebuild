# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Get transport information from TransportNSW"
HOMEPAGE="https://github.com/Dav0815/TransportNSW"
SRC_URI="https://files.pythonhosted.org/packages/f5/ea/e978a5662e2a2db76427258cbb2c089b934d08ddfdca07e4819c20a302f0/PyTransportNSW-0.1.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/PyTransportNSW-0.1.1"

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
