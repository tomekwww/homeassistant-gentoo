# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="API to interact with ESPHome Dashboard"
HOMEPAGE="https://pypi.org/project/esphome-dashboard-api/"
SRC_URI="https://files.pythonhosted.org/packages/bd/cd/54f2a1b61544cc966583c92abd9b24cf5f6cbe97be31976b4d1a6657413f/esphome_dashboard_api-1.3.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/esphome_dashboard_api-1.3.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/orjson[${PYTHON_USEDEP}]
"
