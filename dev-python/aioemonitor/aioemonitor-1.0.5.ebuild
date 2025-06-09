# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asyncio Python lib for SiteSage Emonitor"
HOMEPAGE="https://github.com/bdraco/aioemonitor"
SRC_URI="https://files.pythonhosted.org/packages/e5/ad/3aea32b16aeb0da438d58e59f3252d25747d019a55f92e75313d4bab1d5c/aioemonitor-1.0.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aioemonitor-1.0.5"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/xmltodict-0.12.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.7.0[${PYTHON_USEDEP}]
"
