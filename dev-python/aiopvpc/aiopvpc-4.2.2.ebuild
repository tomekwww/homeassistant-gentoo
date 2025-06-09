# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Retrieval of Spanish Electricity hourly prices PVPC"
HOMEPAGE="https://github.com/azogue/aiopvpc"
SRC_URI="https://files.pythonhosted.org/packages/ea/c8/42660e2ab680a949d5c9497b438c821979e8209914648c96bcce9856c051/aiopvpc-4.2.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiopvpc-4.2.2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.7.4[${PYTHON_USEDEP}]
	>=dev-python/async-timeout-3.0.1[${PYTHON_USEDEP}]
"
