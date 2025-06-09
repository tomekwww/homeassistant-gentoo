# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library for communicating with deCONZ RESTAPI"
HOMEPAGE="https://pypi.org/project/pydeconz/"
SRC_URI="https://files.pythonhosted.org/packages/97/41/bec7d3be72fd6ba8c3be9ff6805fb56018b6b56c4f17e963a7358367da23/pydeconz-120.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pydeconz-120"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>dev-python/aiohttp-3.9.0[${PYTHON_USEDEP}]
	>dev-python/orjson-3.9.0[${PYTHON_USEDEP}]
"
