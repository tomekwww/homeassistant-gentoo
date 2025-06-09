# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library to control Airzone devices"
HOMEPAGE="https://pypi.org/project/aioairzone/"
SRC_URI="https://files.pythonhosted.org/packages/26/eb/c2c807a1fdf8346bd9ad875b6f1bf489fb5be126bf7b1c6cf98b31c8a013/aioairzone-1.0.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aioairzone-1.0.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
"
