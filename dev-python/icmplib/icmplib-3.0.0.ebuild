# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="The power to forge ICMP packets and do ping and traceroute"
HOMEPAGE="https://github.com/ValentinBELYN/icmplib"
SRC_URI="https://files.pythonhosted.org/packages/9e/47/9b4f8c9299dadec0d707e6611ab4025acb26c72d984f06553515e2938371/icmplib-3.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/icmplib-3.0"

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
