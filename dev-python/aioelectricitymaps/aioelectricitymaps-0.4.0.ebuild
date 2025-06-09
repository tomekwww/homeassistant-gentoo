# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Async Python 3 wrapper for Electricity maps"
HOMEPAGE="https://github.com/jpbede/aioelectricitymaps"
SRC_URI="https://files.pythonhosted.org/packages/38/bd/168dd0e25899dcfe246a6e320811213a44632dcd4aa652d2ed3b2782beff/aioelectricitymaps-0.4.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aioelectricitymaps-0.4.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.8.0[${PYTHON_USEDEP}]
	>=dev-python/mashumaro-3.11.0[${PYTHON_USEDEP}]
	>=dev-python/orjson-3.9.8[${PYTHON_USEDEP}]
"
