# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=pdm-backend
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="JewishHebrew date and Zmanim in native Python 273x"
HOMEPAGE="https://pypi.org/project/hdate/"
SRC_URI="https://files.pythonhosted.org/packages/90/c4/0117f698034299c3fd8814bef9fb45625f253c03691fcdab17a41b2d21a3/hdate-1.1.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/hdate-1.1.1"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/num2words-0.5.14[${PYTHON_USEDEP}]
	>=dev-python/astral-2.2.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
