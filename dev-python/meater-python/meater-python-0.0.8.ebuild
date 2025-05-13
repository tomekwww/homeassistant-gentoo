# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A wrapper for the Apption Labs Meater probe API v1"
HOMEPAGE="https://github.com/Sotolotl/meater-python"
SRC_URI="https://files.pythonhosted.org/packages/b9/99/35c5d3c51e36fa64581792b326f838e1f9caae0c8b72f62b836207dd969a/meater-python-0.0.8.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<=dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
"
