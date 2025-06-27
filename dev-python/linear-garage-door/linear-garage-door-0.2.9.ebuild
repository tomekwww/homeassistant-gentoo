# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Control Linear Garage Doors with Python"
HOMEPAGE="https://IceBotYT.github.io/linear-garage-door"
SRC_URI="https://files.pythonhosted.org/packages/96/bd/c3258895bfd8ab4b5e06fa72bb09075378c33a89c256d49c667d11a0a88c/linear_garage_door-0.2.9.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/linear_garage_door-0.2.9"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/dnspython-2.3.0[${PYTHON_USEDEP}]
	<dev-python/dnspython-3.0.0[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.8.1[${PYTHON_USEDEP}]
	>=dev-python/tenacity-8.2.3[${PYTHON_USEDEP}]
	<dev-python/tenacity-9.0.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
