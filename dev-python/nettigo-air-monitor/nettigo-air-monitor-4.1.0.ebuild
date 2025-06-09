# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python wrapper for getting air quality data from Nettigo Air Monitor devices"
HOMEPAGE="https://pypi.org/project/nettigo-air-monitor/"
SRC_URI="https://files.pythonhosted.org/packages/fe/0c/e7a3b608abf20549355731659c133b80909f75f87ea77fc1a4ddab6aea37/nettigo_air_monitor-4.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/nettigo_air_monitor-4.1.0"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.9.4[${PYTHON_USEDEP}]
	dev-python/aqipy-atmotech[${PYTHON_USEDEP}]
	>=dev-python/dacite-1.7.0[${PYTHON_USEDEP}]
	dev-python/tenacity[${PYTHON_USEDEP}]
"
