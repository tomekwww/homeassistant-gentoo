# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A package to control Roborock vacuums"
HOMEPAGE="https://github.com/humbertogontijo/python-roborock"
SRC_URI="https://files.pythonhosted.org/packages/05/36/01daf7e5e8e670b0e2ab801f9310f6598f30ee4c8beccecd2e4ebb7c36d4/python_roborock-2.18.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/python_roborock-2.18.2"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.8.2[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	<dev-python/aiomqtt-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiomqtt-2.3.2[${PYTHON_USEDEP}]
	dev-python/async-timeout[${PYTHON_USEDEP}]
	>=dev-python/click-8.0.0[${PYTHON_USEDEP}]
	<dev-python/construct-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/construct-2.10.57[${PYTHON_USEDEP}]
	<dev-python/paho-mqtt-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/paho-mqtt-1.6.1[${PYTHON_USEDEP}]
	>=dev-python/pycryptodome-3.18.0[${PYTHON_USEDEP}]
	<dev-python/pycryptodome-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/pyrate-limiter-3.7.0[${PYTHON_USEDEP}]
	<dev-python/pyrate-limiter-4.0.0[${PYTHON_USEDEP}]
	dev-python/vacuum-map-parser-roborock[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
