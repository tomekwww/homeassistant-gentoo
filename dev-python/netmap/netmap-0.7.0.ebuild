# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="This is a python class to use nmap and access scan results from python3"
HOMEPAGE="https://github.com/home-assistant-libs/python-nmap"
SRC_URI="https://files.pythonhosted.org/packages/ed/7c/e07a2ee6f173f2a61a1cf38c372be692b40e1599d41a278275de9e3060dc/netmap-0.7.0.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
