# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library for connecting to nexia"
HOMEPAGE="https://pypi.org/project/nexia/"
SRC_URI="https://files.pythonhosted.org/packages/64/f0/341d9df9eb9ce25aec550fe15d23ee9fb23e759e69ada7b60f0130b8bc6b/nexia-2.10.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/orjson[${PYTHON_USEDEP}]
	dev-python/propcache[${PYTHON_USEDEP}]
"
