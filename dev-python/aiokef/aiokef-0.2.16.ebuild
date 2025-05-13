# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asyncio Python API for KEF speakers"
HOMEPAGE="https://github.com/basnijholt/aiokef"
SRC_URI="https://files.pythonhosted.org/packages/c6/3f/ab93a56b63b251c56f649a6a25d2913cd1359a403c8fe08161f22d9bb7ed/aiokef-0.2.16.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/async-timeout[${PYTHON_USEDEP}]
	dev-python/tenacity[${PYTHON_USEDEP}]
"
