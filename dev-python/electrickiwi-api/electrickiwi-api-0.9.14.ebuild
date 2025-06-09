# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION=""
HOMEPAGE="https://pypi.org/project/electrickiwi-api/"
SRC_URI="https://files.pythonhosted.org/packages/d5/54/bbf0cfeb50a5ef2e3a41354d89600eaaee3f885c77614d5bdc5ab65e5201/electrickiwi_api-0.9.14.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/electrickiwi_api-0.9.14"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.8.1[${PYTHON_USEDEP}]
"
