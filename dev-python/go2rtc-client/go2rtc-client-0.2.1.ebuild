# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python client for go2rtc"
HOMEPAGE="https://pypi.org/project/go2rtc-client/"
SRC_URI="https://files.pythonhosted.org/packages/9c/96/0598fce9e3167ded882580a3941bd9698d525aa1cb950c102cd786e6df71/go2rtc_client-0.2.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/go2rtc_client-0.2.1"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.10.0[${PYTHON_USEDEP}]
	>=dev-python/awesomeversion-24.6.0[${PYTHON_USEDEP}]
	<dev-python/mashumaro-4.13.0[${PYTHON_USEDEP}]
	<dev-python/orjson-4.10.0[${PYTHON_USEDEP}]
	<dev-python/webrtc-models-1.1.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
