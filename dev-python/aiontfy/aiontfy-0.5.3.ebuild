# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Async ntfy client library"
HOMEPAGE="https://pypi.org/project/aiontfy/"
SRC_URI="https://files.pythonhosted.org/packages/78/3b/3241d5f0e75d8dd3230cd0f839e68788565cbb567a107d6063058015a5ea/aiontfy-0.5.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiontfy-0.5.3"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.11.0[${PYTHON_USEDEP}]
	<dev-python/mashumaro-4.13.0[${PYTHON_USEDEP}]
	<dev-python/orjson-4.10.0[${PYTHON_USEDEP}]
"
