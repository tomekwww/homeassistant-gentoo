# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Read and control JuicenetJuicepointJuicebox based EVSE devices"
HOMEPAGE="http://github.com/jesserockz/python-juicenet"
SRC_URI="https://files.pythonhosted.org/packages/45/e6/cae55c9d8e457acf353b0ec715695bc0f29ae836db9f8ff56fec6336da2d/python-juicenet-1.1.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
"
