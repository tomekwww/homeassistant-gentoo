# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asyncio Duke Energy"
HOMEPAGE="https://pypi.org/project/aiodukeenergy/"
SRC_URI="https://files.pythonhosted.org/packages/26/4b/a10daff335073d801f20be1664488d4e1f91faa759d6d6fa1c419b7ac9e9/aiodukeenergy-0.3.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.9.0[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.9.0[${PYTHON_USEDEP}]
"
