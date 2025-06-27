# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library to control Panasonic Viera TVs"
HOMEPAGE="https://pypi.org/project/panasonic-viera/"
SRC_URI="https://files.pythonhosted.org/packages/ff/6c/1ff31d78c4392b901a8f55a0e76be1a61bea04019b5ef0c226dec7a5d7e3/panasonic_viera-0.4.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/panasonic_viera-0.4.2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.9.5[${PYTHON_USEDEP}]
	<dev-python/pycryptodome-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/pycryptodome-3.20.0[${PYTHON_USEDEP}]
	<dev-python/xmltodict-0.14.0[${PYTHON_USEDEP}]
	>=dev-python/xmltodict-0.13.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
