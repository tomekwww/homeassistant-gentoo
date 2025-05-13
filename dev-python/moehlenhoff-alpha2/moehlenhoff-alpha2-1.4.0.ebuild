# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python client for the Moehlenhoff Alpha2 underfloor heating system"
HOMEPAGE="https://pypi.org/project/moehlenhoff-alpha2/"
SRC_URI="https://files.pythonhosted.org/packages/98/87/ff96e60d147f66206cbf077a8b7cd3ea9588ea07243be5eb90990a94e51c/moehlenhoff_alpha2-1.4.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/xmltodict[${PYTHON_USEDEP}]
"
