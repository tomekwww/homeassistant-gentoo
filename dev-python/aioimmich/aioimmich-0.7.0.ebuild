# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous library to fetch albums and assests from immich"
HOMEPAGE="https://pypi.org/project/aioimmich/"
SRC_URI="https://github.com/mib1185/aioimmich/archive/refs/tags/v0.7.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aioimmich-0.7.0"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
"
