# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python library for communicating with SPC Web Gateway"
HOMEPAGE="https://pypi.org/project/pyspcwebgw/"
SRC_URI="https://files.pythonhosted.org/packages/89/09/ca29a220c4165c1cf2ce17505a2386d384f23b9b05f6574fcf7d2df13e56/pyspcwebgw-0.7.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyspcwebgw-0.7.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.8.3[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
"
