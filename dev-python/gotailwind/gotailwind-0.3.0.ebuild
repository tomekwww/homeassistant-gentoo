# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous Python client for Tailwind garage door openers"
HOMEPAGE="https://github.com/frenck/python-gotailwind"
SRC_URI="https://files.pythonhosted.org/packages/dc/ce/f3e27780956d12a2dc65b02a23d2b764768b87d244006276d6db46747296/gotailwind-0.3.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/gotailwind-0.3.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/awesomeversion-22.8.0[${PYTHON_USEDEP}]
	>=dev-python/backoff-2.2.1[${PYTHON_USEDEP}]
	>=dev-python/mashumaro-3.10.0[${PYTHON_USEDEP}]
	>=dev-python/orjson-3.9.8[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.6.0[${PYTHON_USEDEP}]
	>=dev-python/zeroconf-0.126.0[${PYTHON_USEDEP}]
"
