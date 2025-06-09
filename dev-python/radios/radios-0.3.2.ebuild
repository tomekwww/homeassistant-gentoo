# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous Python client for the Radio Browser API"
HOMEPAGE="https://github.com/frenck/python-radios"
SRC_URI="https://files.pythonhosted.org/packages/f5/c5/35d111d76ab729c12df32a76c3fce0c4f351b9363d3c2f3e42c3b97e3397/radios-0.3.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/radios-0.3.2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiodns-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/awesomeversion-21.10.1[${PYTHON_USEDEP}]
	>=dev-python/backoff-1.9.0[${PYTHON_USEDEP}]
	>=dev-python/cachetools-4.0.0[${PYTHON_USEDEP}]
	<dev-python/cachetools-6.0.0[${PYTHON_USEDEP}]
	>=dev-python/mashumaro-3.10.0[${PYTHON_USEDEP}]
	>=dev-python/orjson-3.9.8[${PYTHON_USEDEP}]
	<dev-python/pycountry-25.0.0[${PYTHON_USEDEP}]
	>=dev-python/pycountry-24.0.0[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.6.0[${PYTHON_USEDEP}]
"
