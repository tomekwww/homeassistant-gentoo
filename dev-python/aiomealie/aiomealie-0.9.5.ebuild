# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous Python client for Mealie"
HOMEPAGE="https://github.com/joostlek/python-mealie"
SRC_URI="https://files.pythonhosted.org/packages/ce/42/56d5f3c3b811f82652ae99023ba56485bd5db3dc9d08ec32eb6124b888b3/aiomealie-0.9.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiomealie-0.9.5"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/awesomeversion-24.6.0[${PYTHON_USEDEP}]
	<dev-python/awesomeversion-25.0.0[${PYTHON_USEDEP}]
	<dev-python/mashumaro-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/mashumaro-3.15.0[${PYTHON_USEDEP}]
	>=dev-python/orjson-3.9.0[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.6.0[${PYTHON_USEDEP}]
"
