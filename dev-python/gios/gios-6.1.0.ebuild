# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python wrapper for getting air quality data from GIO servers"
HOMEPAGE="https://pypi.org/project/gios/"
SRC_URI="https://files.pythonhosted.org/packages/d5/a7/bc43f5d4943faf6e2af699991aae45fbfe58b482462a35b66bb5d80d7df7/gios-6.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/gios-6.1.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.9.4[${PYTHON_USEDEP}]
	>=dev-python/dacite-1.7.0[${PYTHON_USEDEP}]
	dev-python/yarl[${PYTHON_USEDEP}]
"

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
