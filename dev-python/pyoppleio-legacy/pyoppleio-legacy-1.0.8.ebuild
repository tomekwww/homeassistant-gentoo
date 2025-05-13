# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library for interfacing with old models of opple lights with wifi control"
HOMEPAGE="https://github.com/tinysnake/python-oppleio-legacy"
SRC_URI="https://github.com/tinysnake/python-oppleio-legacy/archive/refs/heads/main.zip -> ${P}.gh.zip"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	~dev-python/pycrc16-0.1.2[${PYTHON_USEDEP}]
"
