# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python WebRTC models"
HOMEPAGE="https://pypi.org/project/webrtc-models/"
SRC_URI="https://files.pythonhosted.org/packages/80/e8/050ffe3b71ff44d3885eee2bed763ca937e2a30bc950d866f22ba657776b/webrtc_models-0.3.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/webrtc_models-0.3.0"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/mashumaro-4.13.0[${PYTHON_USEDEP}]
	>=dev-python/orjson-3.10.7[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
