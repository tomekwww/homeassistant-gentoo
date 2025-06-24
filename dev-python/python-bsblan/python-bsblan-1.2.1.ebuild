# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous Python client for BSBLAN API"
HOMEPAGE="https://github.com/liudger/python-bsblan"
SRC_URI="https://files.pythonhosted.org/packages/34/4b/7da570332abb7f0bd4e017e08796cdb67dde6e9dcde2c3a2a2b44870a4be/python_bsblan-1.2.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/python_bsblan-1.2.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.8.1[${PYTHON_USEDEP}]
	<dev-python/async-timeout-5.0.0[${PYTHON_USEDEP}]
	>=dev-python/async-timeout-4.0.3[${PYTHON_USEDEP}]
	<dev-python/backoff-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/backoff-2.2.1[${PYTHON_USEDEP}]
	>=dev-python/mashumaro-3.13.1[${PYTHON_USEDEP}]
	<dev-python/mashumaro-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/orjson-3.9.10[${PYTHON_USEDEP}]
	<dev-python/orjson-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/packaging-21.3.0[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.7.2[${PYTHON_USEDEP}]
"
