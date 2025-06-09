# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python wrapper for SABnzbd API"
HOMEPAGE="https://github.com/jeradM/pysabnzbd"
SRC_URI="https://github.com/jeradM/pysabnzbd/archive/1.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pysabnzbd-1.1.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.6.1[${PYTHON_USEDEP}]
"
