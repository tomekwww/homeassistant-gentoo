# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Companion library for musiccast devices intended for the Home Assistant integration"
HOMEPAGE="https://pypi.org/project/aiomusiccast"
SRC_URI="https://files.pythonhosted.org/packages/fc/c0/1d1fc503824934284aa0ab8185102eef1a0b3e4f368543430327e11f0423/aiomusiccast-0.14.8.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.7.4[${PYTHON_USEDEP}]
"
