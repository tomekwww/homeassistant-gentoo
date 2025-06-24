# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python wrapper for TPLink Omada SDN Controller API OC200OC300Software Controller"
HOMEPAGE="https://pypi.org/project/tplink-omada-client/"
SRC_URI="https://files.pythonhosted.org/packages/a8/0b/9ae5224b1403af2ac593dcaabadfd357a984d7b6ef2a3454d2e0644e18f4/tplink_omada_client-1.4.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/tplink_omada_client-1.4.4"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.9.3[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/awesomeversion-22.9.0[${PYTHON_USEDEP}]
"
