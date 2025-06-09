# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous Python client for the HERE Routing V8 API"
HOMEPAGE="https://pypi.org/project/here_routing/"
SRC_URI="https://files.pythonhosted.org/packages/45/19/1c0d5af187a5a4424aa7d215023815f88b0d4e42ef5933565a657b3ffc34/here_routing-1.0.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/here_routing-1.0.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.9.5[${PYTHON_USEDEP}]
	>=dev-python/async-timeout-4.0.3[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.9.4[${PYTHON_USEDEP}]
"
