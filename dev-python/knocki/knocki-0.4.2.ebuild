# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous Python client for Knocki"
HOMEPAGE="https://github.com/swan-solutions/knocki-homeassistant"
SRC_URI="https://files.pythonhosted.org/packages/18/2b/6792e02747d915634326e9fb60072328eb929a9e1137907ada81e8159c07/knocki-0.4.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/knocki-0.4.2"

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
