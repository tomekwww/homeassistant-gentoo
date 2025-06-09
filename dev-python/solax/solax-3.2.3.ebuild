# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Solax inverter API client"
HOMEPAGE="https://github.com/squishykid/solax"
SRC_URI="https://files.pythonhosted.org/packages/49/49/fe4002a9b48aaba833606d6dc2d9ecd3a5d52190b50cbc02e2b1c03534f4/solax-3.2.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/solax-3.2.3"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.5.4[${PYTHON_USEDEP}]
	>=dev-python/voluptuous-0.11.5[${PYTHON_USEDEP}]
"
