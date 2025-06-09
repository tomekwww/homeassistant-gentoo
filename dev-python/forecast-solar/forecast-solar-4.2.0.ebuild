# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous Python client for getting forecast solar information"
HOMEPAGE="https://pypi.org/project/forecast-solar/"
SRC_URI="https://files.pythonhosted.org/packages/1c/9b/4954f45562809a44a2e2cce2e29cd905691ebf519a45b1ee06a5f74c63a2/forecast_solar-4.2.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/forecast_solar-4.2.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.6.0[${PYTHON_USEDEP}]
"
