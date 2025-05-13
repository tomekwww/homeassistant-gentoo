# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python RESTClient for Kostal Plenticore Solar Inverters"
HOMEPAGE="https://github.com/stegm/pyclient_koplenti"
SRC_URI="https://files.pythonhosted.org/packages/69/91/77b4718c686a8ae70393dc5716561e83a118863d1b222c36de56a8cb166d/pykoplenti-1.3.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.8.0[${PYTHON_USEDEP}]
	<dev-python/pycryptodome-4.19.0[${PYTHON_USEDEP}]
	>=dev-python/pydantic-1.10.0[${PYTHON_USEDEP}]
"
