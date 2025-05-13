# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library to read data from the BMW Connected Drive portal"
HOMEPAGE="https://github.com/bimmerconnected/bimmer_connected"
SRC_URI="https://files.pythonhosted.org/packages/2f/60/194ff75f4ad17c4aed1936f0004f8a19a556832c131476429381efd8d29d/bimmer_connected-0.17.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/httpx[${PYTHON_USEDEP}]
	>=dev-python/pycryptodome-3.4.0[${PYTHON_USEDEP}]
	>=dev-python/pyjwt-2.1.0[${PYTHON_USEDEP}]
	dev-python/pillow[${PYTHON_USEDEP}]
	dev-python/pillow[${PYTHON_USEDEP}]
"
