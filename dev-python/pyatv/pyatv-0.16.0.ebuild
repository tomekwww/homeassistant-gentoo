# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A client library for Apple TV and AirPlay devices"
HOMEPAGE="https://pyatv.dev"
SRC_URI="https://files.pythonhosted.org/packages/e4/e2/b1e91a1d14f9b5178e20f7072225f21f82c7003f6d4c5cc3073bb4a4d28e/pyatv-0.16.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyatv-0.16.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-5.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.8.3[${PYTHON_USEDEP}]
	>=dev-python/async-timeout-4.0.2[${PYTHON_USEDEP}]
	>=dev-python/cryptography-43.0.0[${PYTHON_USEDEP}]
	>=dev-python/chacha20poly1305-reuseable-0.13.2[${PYTHON_USEDEP}]
	>=dev-python/ifaddr-0.1.7[${PYTHON_USEDEP}]
	>=dev-python/miniaudio-1.45.0[${PYTHON_USEDEP}]
	>=dev-python/protobuf-5.28.1[${PYTHON_USEDEP}]
	>=dev-python/pydantic-1.10.10[${PYTHON_USEDEP}]
	>=dev-python/requests-2.30.0[${PYTHON_USEDEP}]
	>=dev-python/srptools-0.2.0[${PYTHON_USEDEP}]
	>=dev-python/tabulate-0.9.0[${PYTHON_USEDEP}]
	>=dev-python/tinytag-1.10.0[${PYTHON_USEDEP}]
	>=dev-python/zeroconf-0.129.0[${PYTHON_USEDEP}]
"
