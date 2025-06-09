# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="API for local communication with LIFX devices over a LAN with asyncio"
HOMEPAGE="http://github.com/aiolifx/aiolifx"
SRC_URI="https://files.pythonhosted.org/packages/73/1b/206675b272fb7ba0296a3b8161d865caa4edde00f1d0bd2853420b662103/aiolifx-1.1.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiolifx-1.1.5"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/async-timeout-3.0.1[${PYTHON_USEDEP}]
	dev-python/bitstring[${PYTHON_USEDEP}]
	dev-python/ifaddr[${PYTHON_USEDEP}]
	<dev-python/click-8.2.0[${PYTHON_USEDEP}]
	>=dev-python/click-8.1.0[${PYTHON_USEDEP}]
	>=dev-python/inquirerpy-0.3.0[${PYTHON_USEDEP}]
	<dev-python/inquirerpy-0.4.0[${PYTHON_USEDEP}]
"
