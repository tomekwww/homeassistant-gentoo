# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous communication with Rainforest RAVEn devices"
HOMEPAGE="https://pypi.org/project/aioraven/"
SRC_URI="https://files.pythonhosted.org/packages/9c/1a/812fda4352d0ea57c8df6c4d6097ce52d38d94988431aca35b33ff5a50d6/aioraven-0.7.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aioraven-0.7.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/iso4217[${PYTHON_USEDEP}]
	>=dev-python/pyserial-2.5.0[${PYTHON_USEDEP}]
	dev-python/pyserial-asyncio-fast[${PYTHON_USEDEP}]
"
