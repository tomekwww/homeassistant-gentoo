# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library for ecoforest local device"
HOMEPAGE="https://github.com/pjanuario/pyecoforest"
SRC_URI="https://files.pythonhosted.org/packages/e9/0c/e453fee1080b6f5e02bd8368c62795a46e62b2bba6e0dfc4c75a58e20ec0/pyecoforest-0.4.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyecoforest-0.4.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/httpx-0.24.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
