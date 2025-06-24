# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An API client for public transport data from Entur"
HOMEPAGE="https://github.com/hfurubotten/enturclient"
SRC_URI="https://files.pythonhosted.org/packages/0a/a0/66dfd159a753f8ce845974dbe8998a33844f5b0a6d1790aa3d296df3ac6e/enturclient-0.2.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/enturclient-0.2.4"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.7.4[${PYTHON_USEDEP}]
	<dev-python/async-timeout-5.0.0[${PYTHON_USEDEP}]
	>=dev-python/async-timeout-3.0.1[${PYTHON_USEDEP}]
"
