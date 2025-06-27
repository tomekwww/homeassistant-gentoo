# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A library to communicate with Switchmate"
HOMEPAGE="https://github.com/Danielhiversen/pySwitchmate/"
SRC_URI="https://files.pythonhosted.org/packages/bf/7b/2812616528e984cb05a7edb3918dc056e5a584311cbf98cb00a7f29e77c1/PySwitchmate-0.5.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/PySwitchmate-0.5.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/bleak[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
