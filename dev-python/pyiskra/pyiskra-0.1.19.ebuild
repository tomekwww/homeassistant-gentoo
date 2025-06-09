# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python Iskra devices interface"
HOMEPAGE="https://github.com/Iskramis/pyiskra"
SRC_URI="https://files.pythonhosted.org/packages/86/96/1446f90545fafee0411f24856fedad7b37a8b1376129ac35c578330843b1/pyiskra-0.1.19.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyiskra-0.1.19"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/pymodbus[${PYTHON_USEDEP}]
"
