# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="The idiomatic asyncio MQTT client"
HOMEPAGE="https://pypi.org/project/aiomqtt/"
SRC_URI="https://files.pythonhosted.org/packages/45/9a/863bc34c64bc4acb9720a9950bfc77d6f324640cdf1f420bb5d9ee624975/aiomqtt-2.4.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiomqtt-2.4.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/paho-mqtt-2.1.0[${PYTHON_USEDEP}]
	<dev-python/paho-mqtt-3.0.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
