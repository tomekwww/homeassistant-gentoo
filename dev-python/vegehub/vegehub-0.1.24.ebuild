# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A basic package for simplifying interactions with the Vegetronix VegeHub"
HOMEPAGE="https://www.vegetronix.com/Products/VG-HUB-RELAY/"
SRC_URI="https://files.pythonhosted.org/packages/b1/ce/e08c4499dde3489e4a6b55e7f83420ead032b4474210a942d0c8bcd64f43/vegehub-0.1.24.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/vegehub-0.1.24"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.10.8[${PYTHON_USEDEP}]
"

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
