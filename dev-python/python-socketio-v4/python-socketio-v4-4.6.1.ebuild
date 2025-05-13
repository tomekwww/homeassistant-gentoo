# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="SocketIO server"
HOMEPAGE="http://github.com/bdraco/python-socketio-v4/"
SRC_URI="https://files.pythonhosted.org/packages/99/ff/894dcc57658db343aa410d4a6f5208f021cf89bb5b650833af67225e817a/python-socketio-v4-4.6.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/six-1.9.0[${PYTHON_USEDEP}]
	>=dev-python/python-engineio-v3-3.13.0[${PYTHON_USEDEP}]
	<dev-python/python-engineio-v3-4.0.0[${PYTHON_USEDEP}]
"
