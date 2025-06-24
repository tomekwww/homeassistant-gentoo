# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous Implementation of the Frontier Silicon API"
HOMEPAGE="https://github.com/zhelev/python-afsapi.git"
SRC_URI="https://files.pythonhosted.org/packages/5f/96/f767e4ae1b90f722c5a4bbf37addc1af602c3c87a4caae4dc8f0c299402d/afsapi-0.2.7.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/afsapi-0.2.7"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.3.2[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
"
