# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Async Python wrapper for the Rituals Perfume Genie API"
HOMEPAGE="https://github.com/milanmeu/pyrituals"
SRC_URI="https://files.pythonhosted.org/packages/8d/97/1364136ac7b9668f28def833beffcdbf1cee6adf9bc827934cf941fb3ebf/pyrituals-0.0.6.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyrituals-0.0.6"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
"
