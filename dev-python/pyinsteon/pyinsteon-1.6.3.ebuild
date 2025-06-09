# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Opensource Insteon home automation module running on Python 3"
HOMEPAGE="https://pypi.org/project/pyinsteon/"
SRC_URI="https://files.pythonhosted.org/packages/1a/a2/c370577c010495284ab8dfadff1973ad323a29530d33c880b1873e987eed/pyinsteon-1.6.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyinsteon-1.6.3"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/pyserial[${PYTHON_USEDEP}]
	>=dev-python/pyserial-asyncio-0.5.0[${PYTHON_USEDEP}]
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/pypubsub[${PYTHON_USEDEP}]
	dev-python/aiofiles[${PYTHON_USEDEP}]
	dev-python/voluptuous[${PYTHON_USEDEP}]
"
