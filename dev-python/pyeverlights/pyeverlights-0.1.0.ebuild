# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A library for controlling an EverLights lighting system"
HOMEPAGE="https://github.com/joncar/pyeverlights"
SRC_URI="https://files.pythonhosted.org/packages/b8/23/c2094aa09aac5cd41a4793dea4e4ee54cfe9f485b5d249ab47fbef46aafe/pyeverlights-0.1.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
"
