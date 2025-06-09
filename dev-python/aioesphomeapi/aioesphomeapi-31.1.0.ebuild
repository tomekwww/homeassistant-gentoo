# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for interacting with ESPHome devices"
HOMEPAGE="https://esphome.io/"
SRC_URI="https://files.pythonhosted.org/packages/62/b7/acd724f19205bbf3d845d9951bbe8e796b0ae67e79b497bb3012a4e5779b/aioesphomeapi-31.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aioesphomeapi-31.1.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohappyeyeballs-2.3.0[${PYTHON_USEDEP}]
	>=dev-python/async-interrupt-1.2.0[${PYTHON_USEDEP}]
	>=dev-python/protobuf-4.0.0[${PYTHON_USEDEP}]
	<dev-python/zeroconf-1.0.0[${PYTHON_USEDEP}]
	>=dev-python/zeroconf-0.143.0[${PYTHON_USEDEP}]
	>=dev-python/chacha20poly1305-reuseable-0.13.2[${PYTHON_USEDEP}]
	>=dev-python/cryptography-43.0.0[${PYTHON_USEDEP}]
	<dev-python/noiseprotocol-1.0.0[${PYTHON_USEDEP}]
	>=dev-python/noiseprotocol-0.3.1[${PYTHON_USEDEP}]
"
