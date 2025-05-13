# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python program and library to control WiFi enabled ROMY vacuum cleaners"
HOMEPAGE="https://pypi.org/project/romy/"
SRC_URI="https://files.pythonhosted.org/packages/ba/f2/927a48115ef51dabe56cd2e7f8d7d14c9a5fa8436d8c87034749d180cd44/romy-0.0.10.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.8.0[${PYTHON_USEDEP}]
"
