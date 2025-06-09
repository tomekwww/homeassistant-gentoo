# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python client library for the Kaleidescape System Control Protocol"
HOMEPAGE="https://github.com/SteveEasley/pykaleidescape"
SRC_URI="https://files.pythonhosted.org/packages/e2/ab/3be1aa34f0a20d076d325428fd732acea56b7fc103e787ef28e995aa0165/pykaleidescape-1.0.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pykaleidescape-1.0.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.8.0[${PYTHON_USEDEP}]
	>=dev-python/dnspython-2.1.0[${PYTHON_USEDEP}]
"
