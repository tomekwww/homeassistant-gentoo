# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="MPython module to talk to Husqvarna Automower"
HOMEPAGE="https://pypi.org/project/aioautomower/"
SRC_URI="https://files.pythonhosted.org/packages/5e/1e/dbf2cf9ad1322caff606888d41518a9422aa0936a0a149ec543e657be643/aioautomower-2025.5.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aioautomower-2025.5.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/pyjwt-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/pyjwt-2.8.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.9.3[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/ical-8.0.1[${PYTHON_USEDEP}]
	<dev-python/mashumaro-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/mashumaro-3.12.0[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.9.0[${PYTHON_USEDEP}]
	<dev-python/python-dateutil-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/tzlocal-5.2.0[${PYTHON_USEDEP}]
	<dev-python/tzlocal-6.0.0[${PYTHON_USEDEP}]
"
