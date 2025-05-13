# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Automated JSON API based communication with Samsung SyncThru Web Service"
HOMEPAGE="https://github.com/nielstron/pysyncthru/"
SRC_URI="https://files.pythonhosted.org/packages/8e/15/c61568c333c16f6f27b89da8ce006ae6dae25f86aee8b96bb27eb3ac8dd5/PySyncThru-0.8.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/demjson3[${PYTHON_USEDEP}]
	dev-python/aiohttp[${PYTHON_USEDEP}]
"
