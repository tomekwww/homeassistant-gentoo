# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Netgear LTE modem API"
HOMEPAGE="https://github.com/amelchio/eternalegypt"
SRC_URI="https://files.pythonhosted.org/packages/b8/fb/ec40ac588829d39420157e7067df95ac826a52909bef382d5d85c73ea2ce/eternalegypt-0.0.16.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/eternalegypt-0.0.16"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.0.1[${PYTHON_USEDEP}]
	dev-python/attrs[${PYTHON_USEDEP}]
"
