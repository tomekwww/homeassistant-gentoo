# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An API for the homematicip cloud"
HOMEPAGE="https://pypi.org/project/homematicip/"
SRC_URI="https://files.pythonhosted.org/packages/cc/1a/aaa59ad157f663a389533e4d427cd1f268170c5030a1814dfa3f54d621ec/homematicip-2.0.1.1.post1.dev14.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/homematicip-2.0.1.1.post1.dev14"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.32.0[${PYTHON_USEDEP}]
	>=dev-python/websockets-13.1.0[${PYTHON_USEDEP}]
	<dev-python/websockets-14.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.10.11[${PYTHON_USEDEP}]
	>=dev-python/httpx-0.27.2[${PYTHON_USEDEP}]
"
