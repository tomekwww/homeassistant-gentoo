# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Remote control Samsung televisions via TCPIP connection"
HOMEPAGE="https://github.com/Ape/samsungctl"
SRC_URI="https://files.pythonhosted.org/packages/33/13/d97749371984ebacc53e66106cd3d224650aa2e33b21f3a4fcb4375435b3/samsungctl-0.7.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
