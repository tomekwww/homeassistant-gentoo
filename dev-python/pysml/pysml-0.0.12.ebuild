# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library for EDL21 smart meters using Smart Message Language SML"
HOMEPAGE="https://pypi.org/project/pysml/"
SRC_URI="https://files.pythonhosted.org/packages/13/a0/83b672fcc7eb047f473b623cc726f3c68d73102263071c63fdea0d23dd5b/pysml-0.0.12.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pysml-0.0.12"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/async-timeout-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/bitstring-3.1.0[${PYTHON_USEDEP}]
	>=dev-python/pyserial-asyncio-0.6.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/sml-mqtt-bridge.service" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/sml-mqtt-bridge.service"
    fi
    distutils-r1_src_install
}
