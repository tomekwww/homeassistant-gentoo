# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous Python client for SmartThings"
HOMEPAGE="https://pypi.org/project/pysmartthings/"
SRC_URI="https://files.pythonhosted.org/packages/40/27/f41bed6f87686aa0a22c4f4b72296118abe2a56599e466d6f86a1750344e/pysmartthings-3.2.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pysmartthings-3.2.3"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.0.0[${PYTHON_USEDEP}]
	<dev-python/aiohttp-sse-client2-0.4.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-sse-client2-0.3.0[${PYTHON_USEDEP}]
	<dev-python/mashumaro-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/mashumaro-3.11.0[${PYTHON_USEDEP}]
	<dev-python/orjson-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/orjson-3.9.10[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.6.0[${PYTHON_USEDEP}]
"
