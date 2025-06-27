# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A library for interacting with the PECO outage map to gain the numbers from it"
HOMEPAGE="https://IceBotYT.github.io/peco-outage-api"
SRC_URI="https://files.pythonhosted.org/packages/a8/12/be37f177e1feb3d2bb1dc8d9ecb1b77029dd009514e5cc0448a0c7c6b4fc/peco-0.1.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/peco-0.1.2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.9.5[${PYTHON_USEDEP}]
	>=dev-python/pydantic-1.8.0[${PYTHON_USEDEP}]
	<dev-python/pydantic-3.0.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
