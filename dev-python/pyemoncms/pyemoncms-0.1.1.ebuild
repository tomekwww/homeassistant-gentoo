# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python library to interrogate emoncms API"
HOMEPAGE="https://github.com/Open-Building-Management/pyemoncms"
SRC_URI="https://files.pythonhosted.org/packages/58/26/676c37667153be906518fe261ef45e8e213d59e06d6a24a1f4677a669935/pyemoncms-0.1.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyemoncms-0.1.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
"
