# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous Python client for Homeassistant Analytics"
HOMEPAGE="https://pypi.org/project/python-homeassistant-analytics/"
SRC_URI="https://files.pythonhosted.org/packages/da/5d/4d6a425b9fab64a4406add833cbf74ae4ed48b54172d608e57f67dffc39f/python_homeassistant_analytics-0.9.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/python_homeassistant_analytics-0.9.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.0.0[${PYTHON_USEDEP}]
	<dev-python/mashumaro-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/mashumaro-3.11.0[${PYTHON_USEDEP}]
	>=dev-python/orjson-3.9.0[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.6.0[${PYTHON_USEDEP}]
"
