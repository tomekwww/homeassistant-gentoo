# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library for EDL21 smart meters using Smart Message Language SML"
HOMEPAGE="https://pypi.org/project/pysml/"
SRC_URI="https://files.pythonhosted.org/packages/c9/a0/9d95a7ef0b1477f7bcd57a70d19be87586e8dcb2d0e857619c7ef3f09d22/pysml-0.1.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pysml-0.1.5"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/bitstring-3.1.0[${PYTHON_USEDEP}]
	>=dev-python/pyserial-asyncio-fast-0.16.0[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.8.4[${PYTHON_USEDEP}]
"

src_prepare() {
	cat pyproject.toml | grep -v "from = " > x
	mv x pyproject.toml
	distutils-r1_src_prepare
}


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/sml-mqtt-bridge.service" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/sml-mqtt-bridge.service"
    fi
    distutils-r1_src_install
}
