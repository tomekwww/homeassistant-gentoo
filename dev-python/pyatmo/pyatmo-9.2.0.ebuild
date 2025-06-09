# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Simple API to access Netatmo weather station data from any Python 3 script Designed for Home Assistant but not only"
HOMEPAGE="https://pypi.org/project/pyatmo/"
SRC_URI="https://files.pythonhosted.org/packages/4a/3a/9343d863a744c2661e0b1e21b669db0db1e4620eb65b2fc38496bc09fca7/pyatmo-9.2.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyatmo-9.2.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.7.4[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	<dev-python/oauthlib-4.1.0[${PYTHON_USEDEP}]
	>=dev-python/requests-oauthlib-1.3.0[${PYTHON_USEDEP}]
	<dev-python/requests-oauthlib-3.0.0[${PYTHON_USEDEP}]
	<dev-python/requests-3.24.0[${PYTHON_USEDEP}]
"
