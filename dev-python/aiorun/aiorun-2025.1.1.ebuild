# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=flit
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Boilerplate for asyncio applications"
HOMEPAGE="https://github.com/cjrh/aiorun"
SRC_URI="https://files.pythonhosted.org/packages/d4/b9/77d7ecc3c0738046b086498eca5f67669285b6bd10adf44b242daf02ecba/aiorun-2025.1.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiorun-2025.1.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
