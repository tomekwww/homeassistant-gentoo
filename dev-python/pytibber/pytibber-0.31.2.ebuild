# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python3 library to communicate with Tibber"
HOMEPAGE="https://pypi.org/project/pyTibber/"
SRC_URI="https://files.pythonhosted.org/packages/f4/19/164420317726af7e9c6dc29746b9681a40797c3f033528d4f132d1beae7b/pytibber-0.31.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pytibber-0.31.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.0.6[${PYTHON_USEDEP}]
	>=dev-python/gql-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/websockets-10.0.0[${PYTHON_USEDEP}]
	<dev-python/websockets-14.0.0[${PYTHON_USEDEP}]
"
