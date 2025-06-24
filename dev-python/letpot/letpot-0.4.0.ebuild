# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous Python client for LetPot hydroponic gardens"
HOMEPAGE="https://pypi.org/project/letpot/"
SRC_URI="https://files.pythonhosted.org/packages/c9/32/c6c593d103b12de962fd19d26dca29e78a6a095bccd6fd1742faab26b17e/letpot-0.4.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/letpot-0.4.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.11.0[${PYTHON_USEDEP}]
	>=dev-python/aiomqtt-2.0.0[${PYTHON_USEDEP}]
	<dev-python/aiomqtt-3.0.0[${PYTHON_USEDEP}]
"
