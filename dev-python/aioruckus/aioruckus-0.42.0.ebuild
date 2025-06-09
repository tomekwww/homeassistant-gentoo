# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API to interact with Ruckus Unleashed and ZoneDirector devices"
HOMEPAGE="https://github.com/ms264556/aioruckus"
SRC_URI="https://files.pythonhosted.org/packages/07/32/9e1179008b75957d46c9dced781038b9d9b45e518d3a1e7fccc59df44381/aioruckus-0.42.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aioruckus-0.42"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.8.4[${PYTHON_USEDEP}]
	>=dev-python/xmltodict-0.13.0[${PYTHON_USEDEP}]
	>=dev-python/cryptography-41.0.0[${PYTHON_USEDEP}]
"
