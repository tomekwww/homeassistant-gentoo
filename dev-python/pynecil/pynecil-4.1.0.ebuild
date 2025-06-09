# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library to communicate with Pinecil V2 soldering irons via Bluetooth"
HOMEPAGE="https://pypi.org/project/pynecil/"
SRC_URI="https://files.pythonhosted.org/packages/d9/6e/a173ad0f8dd06b2338c9824dd898fb630a0d2beec14c74657753cc5e8d50/pynecil-4.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pynecil-4.1.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.11.10[${PYTHON_USEDEP}]
	>=dev-python/bleak-0.22.0[${PYTHON_USEDEP}]
"
