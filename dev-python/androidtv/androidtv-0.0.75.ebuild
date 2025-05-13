# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Communicate with an Android TV or Fire TV device via ADB over a network"
HOMEPAGE="https://github.com/JeffLIrion/python-androidtv/"
SRC_URI="https://files.pythonhosted.org/packages/9d/11/ac38cbb52cd3ed1298fd9a5e5762b2aa2db7f60f793d3ad3512fc61b9658/androidtv-0.0.75.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/adb-shell-0.4.0[${PYTHON_USEDEP}]
	>=dev-python/pure-python-adb-0.3.0[${PYTHON_USEDEP}]
	>=dev-python/aiofiles-0.4.0[${PYTHON_USEDEP}]
	>=dev-python/async-timeout-3.0.0[${PYTHON_USEDEP}]
"
