# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Bosch Smart Home Controller API Python Library"
HOMEPAGE="https://github.com/tschamm/boschshcpy"
SRC_URI="https://files.pythonhosted.org/packages/59/bc/60e0edb41baff9166df33bfd48238f2c5b44ef36d355abba8051584956bc/boschshcpy-0.2.91.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/boschshcpy-0.2.91"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/cryptography-3.3.2[${PYTHON_USEDEP}]
	>=dev-python/getmac-0.8.2[${PYTHON_USEDEP}]
	<dev-python/getmac-1.0.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.22.0[${PYTHON_USEDEP}]
	>=dev-python/zeroconf-0.28.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
