# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library to control Vodafone Station"
HOMEPAGE="https://pypi.org/project/aiovodafone/"
SRC_URI="https://files.pythonhosted.org/packages/10/15/e24489801dd72db406574dd581533e752a4baaa743cfd883982905000bb4/aiovodafone-0.10.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiovodafone-0.10.0"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/beautifulsoup4[${PYTHON_USEDEP}]
"
