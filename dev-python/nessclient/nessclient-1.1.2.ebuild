# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Implementationabstraction of the Ness D8x  D16x Serial Interface ASCII protocol"
HOMEPAGE="https://github.com/nickw444/nessclient"
SRC_URI="https://files.pythonhosted.org/packages/03/72/fd075eeb51a2a8e43d8f73d158f0743eb2673d3254812809e0eef1a6fa1e/nessclient-1.1.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/nessclient-1.1.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/justbackoff[${PYTHON_USEDEP}]
	dev-python/pyserial-asyncio[${PYTHON_USEDEP}]
"
