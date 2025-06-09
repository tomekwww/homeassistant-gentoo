# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python client for interacting with the openSenseMap API"
HOMEPAGE="https://github.com/home-assistant-ecosystem/python-opensensemap-api"
SRC_URI="https://files.pythonhosted.org/packages/e1/b7/f5ebf6d3cb9379ef0a9b758833767f0e2a86552d929da54d95e614853177/opensensemap-api-0.2.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/opensensemap-api-0.2.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.7.4[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/async-timeout-4.0.0[${PYTHON_USEDEP}]
"
