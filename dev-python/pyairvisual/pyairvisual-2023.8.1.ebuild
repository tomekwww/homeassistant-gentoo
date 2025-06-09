# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A simple API for AirVisual air quality data"
HOMEPAGE="https://github.com/bachya/pyairvisual"
SRC_URI="https://files.pythonhosted.org/packages/b6/30/f3919d860a8bd4ed539fbf98161b15cb7208bf8e86d13307bf8ef5d03cde/pyairvisual-2023.8.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyairvisual-2023.8.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.8.0[${PYTHON_USEDEP}]
	>=dev-python/certifi-2023.7.22[${PYTHON_USEDEP}]
	>=dev-python/numpy-1.22.0[${PYTHON_USEDEP}]
	>=dev-python/pygments-2.15.0[${PYTHON_USEDEP}]
	>=dev-python/pysmb-1.2.6[${PYTHON_USEDEP}]
	<dev-python/pysmb-2.0.0[${PYTHON_USEDEP}]
"
