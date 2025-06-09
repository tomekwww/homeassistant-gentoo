# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An asynchronous Python library to communicate with Sonos devices over websockets"
HOMEPAGE="https://pypi.org/project/sonos-websocket/"
SRC_URI="https://files.pythonhosted.org/packages/d7/67/8b62c744c1a0b8ef686ee28a9f43d082e82cad9986ac8c63d759abb7135f/sonos-websocket-0.1.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/sonos-websocket-0.1.3"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
"
