# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous library to control Shelly devices"
HOMEPAGE="https://pypi.org/project/aioshelly/"
SRC_URI="https://files.pythonhosted.org/packages/4b/dc/58d6b0e9e4c366d7d3dc77ab9cc7fa9add1ea7b41386d354d92958dd2032/aioshelly-13.6.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aioshelly-13.6.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.11.1[${PYTHON_USEDEP}]
	>=dev-python/bluetooth-data-tools-1.28.0[${PYTHON_USEDEP}]
	>=dev-python/habluetooth-3.42.0[${PYTHON_USEDEP}]
	>=dev-python/orjson-3.8.1[${PYTHON_USEDEP}]
	dev-python/yarl[${PYTHON_USEDEP}]
"
