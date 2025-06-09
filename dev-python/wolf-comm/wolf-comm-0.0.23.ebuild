# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A package to communicate with Wolf SmartSet Cloud"
HOMEPAGE="https://github.com/janrothkegel/wolf-comm"
SRC_URI="https://files.pythonhosted.org/packages/14/aa/81032e50f817ff6578955d072cd402a109cfdec752c1683cdea201df33cb/wolf_comm-0.0.23.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/wolf_comm-0.0.23"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/httpx[${PYTHON_USEDEP}]
	dev-python/lxml[${PYTHON_USEDEP}]
	dev-python/pkce[${PYTHON_USEDEP}]
	dev-python/shortuuid[${PYTHON_USEDEP}]
"
