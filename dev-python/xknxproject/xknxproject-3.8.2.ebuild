# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A library to gather information from ETS project files used for KNX"
HOMEPAGE="https://pypi.org/project/xknxproject/"
SRC_URI="https://files.pythonhosted.org/packages/73/67/91604150194b6336e78d0cc47f426e0e438295af9b2ee291bac1d4e01c00/xknxproject-3.8.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/xknxproject-3.8.2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/pyzipper-0.3.6[${PYTHON_USEDEP}]
	>=dev-python/striprtf-0.0.26[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
