# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous Python wrapper library over Bond Local API"
HOMEPAGE="https://github.com/bondhome/bond-async"
SRC_URI="https://files.pythonhosted.org/packages/88/b8/8f687aef0f5ccf1ef9d5fe84b6b7cc9f30b3656b4182c84fc22d737b48d4/bond_async-0.2.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/orjson-3.8.7[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.6.1[${PYTHON_USEDEP}]
"
