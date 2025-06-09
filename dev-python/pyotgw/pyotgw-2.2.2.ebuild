# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A library to interface with the opentherm gateway through serial or network connection"
HOMEPAGE="https://github.com/mvn23/pyotgw"
SRC_URI="https://files.pythonhosted.org/packages/6e/9c/57e450180bd6be6453b8e39dd666e50fa489c33dd63447e79552d14c0cb8/pyotgw-2.2.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyotgw-2.2.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/pyserial-asyncio-fast[${PYTHON_USEDEP}]
"
