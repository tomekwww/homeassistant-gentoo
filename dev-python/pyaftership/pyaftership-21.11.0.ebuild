# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Async Python wrapper for the AfterShip API"
HOMEPAGE="https://github.com/ludeeus/pyaftership"
SRC_URI="https://files.pythonhosted.org/packages/0d/90/93a90a92d645ccfd83c768a16978c9cdfad359e054ba83a6c5d1fc08fa5f/pyaftership-21.11.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyaftership-21.11.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.6.1[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
"
