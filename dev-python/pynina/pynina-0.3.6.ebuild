# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python API wrapper to retrieve warnings from the german NINA app"
HOMEPAGE="https://gitlab.com/DeerMaximum/pynina"
SRC_URI="https://files.pythonhosted.org/packages/34/f6/eb79158bf34761eb9ceb8a1e85612cc2fec3bef029b04e0ec04ccbe81c87/pynina-0.3.6.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.11.6[${PYTHON_USEDEP}]
"
