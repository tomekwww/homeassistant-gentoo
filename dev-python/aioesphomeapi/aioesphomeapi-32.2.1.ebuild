# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for interacting with ESPHome devices"
HOMEPAGE="https://esphome.io/"
SRC_URI="https://files.pythonhosted.org/packages/ad/fc/0b4941008a5eb8cbe4ff14dee4082a7a5be05b8e77d748eb234e84bc0b23/aioesphomeapi-32.2.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aioesphomeapi-32.2.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohappyeyeballs-2.3.0[${PYTHON_USEDEP}]
	>=dev-python/async-interrupt-1.2.0[${PYTHON_USEDEP}]
	>=dev-python/protobuf-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/zeroconf-0.143.0[${PYTHON_USEDEP}]
	<dev-python/zeroconf-1.0.0[${PYTHON_USEDEP}]
	>=dev-python/chacha20poly1305-reuseable-0.13.2[${PYTHON_USEDEP}]
	>=dev-python/cryptography-43.0.0[${PYTHON_USEDEP}]
	>=dev-python/noiseprotocol-0.3.1[${PYTHON_USEDEP}]
	<dev-python/noiseprotocol-1.0.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
