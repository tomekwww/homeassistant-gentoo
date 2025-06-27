# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python wrapper for EcoWitt Protocol"
HOMEPAGE="https://github.com/home-assistant-libs/aioecowitt"
SRC_URI="https://files.pythonhosted.org/packages/5a/d9/1df74a222434f0d0b8313ee2d873475988a5051eb776178421d0b5b745be/aioecowitt-2025.3.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aioecowitt-2025.3.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>dev-python/aiohttp-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/meteocalc-1.1.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
