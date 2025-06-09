# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Async UPnP Client"
HOMEPAGE="https://github.com/StevenLooman/async_upnp_client"
SRC_URI="https://files.pythonhosted.org/packages/48/1e/376740ef57022bfa166a3087f26c091f58da53e09b1c12b3def6015406fc/async_upnp_client-0.44.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/async_upnp_client-0.44.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/voluptuous-0.15.2[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>dev-python/aiohttp-3.9.0[${PYTHON_USEDEP}]
	<dev-python/async-timeout-6.0.0[${PYTHON_USEDEP}]
	>=dev-python/async-timeout-3.0.0[${PYTHON_USEDEP}]
	<dev-python/python-didl-lite-1.5.0[${PYTHON_USEDEP}]
	>=dev-python/defusedxml-0.6.0[${PYTHON_USEDEP}]
"
