# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An asyncio wrapper for the UK Environment Agency Flood Monitoring API"
HOMEPAGE="https://pypi.org/project/aioeafm/"
SRC_URI="https://files.pythonhosted.org/packages/96/18/ba4e9ad61add87b4a854be4e2812fb1c76dce53d467c9752fc741c47854b/aioeafm-0.1.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aioeafm-0.1.2"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.6.1[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
"
