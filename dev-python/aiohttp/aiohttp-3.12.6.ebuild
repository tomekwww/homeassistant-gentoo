# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Async http clientserver framework asyncio"
HOMEPAGE="https://github.com/aio-libs/aiohttp"
SRC_URI="https://files.pythonhosted.org/packages/23/28/2d96dffe4deb40faa7f5615b4aa96c87528e65837d8cb5385da4aecf1c07/aiohttp-3.12.6.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiohttp-3.12.6"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohappyeyeballs-2.5.0[${PYTHON_USEDEP}]
	>=dev-python/aiosignal-1.1.2[${PYTHON_USEDEP}]
	>=dev-python/attrs-17.3.0[${PYTHON_USEDEP}]
	>=dev-python/frozenlist-1.1.1[${PYTHON_USEDEP}]
	>=dev-python/multidict-4.5.0[${PYTHON_USEDEP}]
	<dev-python/multidict-7.0.0[${PYTHON_USEDEP}]
	>=dev-python/propcache-0.2.0[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.17.0[${PYTHON_USEDEP}]
	<dev-python/yarl-2.0.0[${PYTHON_USEDEP}]
"
