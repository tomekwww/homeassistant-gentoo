# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Modern reliable and asyncready client for SignalR protocol"
HOMEPAGE="https://github.com/baking-bad/pysignalr"
SRC_URI="https://files.pythonhosted.org/packages/3a/9f/de6401378e236d77723d743b91bc39bffae6d8ab89689b97991363c94643/pysignalr-1.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pysignalr-1.1.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/websockets-14.0.0[${PYTHON_USEDEP}]
	>=dev-python/websockets-12.0.0[${PYTHON_USEDEP}]
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/msgpack[${PYTHON_USEDEP}]
	dev-python/orjson[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
