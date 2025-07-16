# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A library implementing API control of the SMLIGHT SLZB06 LAN Coordinators"
HOMEPAGE="https://pypi.org/project/pysmlight/"
SRC_URI="https://files.pythonhosted.org/packages/26/96/f0d3006137c2afe058ec014041468ee8bb4be3aaeeca877fcf372f1e046b/pysmlight-0.2.7.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pysmlight-0.2.7"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.9.3[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-sse-client2-0.3.0[${PYTHON_USEDEP}]
	<dev-python/aiohttp-sse-client2-0.4.0[${PYTHON_USEDEP}]
	>=dev-python/awesomeversion-24.6.0[${PYTHON_USEDEP}]
	>=dev-python/mashumaro-3.10.0[${PYTHON_USEDEP}]
"

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
