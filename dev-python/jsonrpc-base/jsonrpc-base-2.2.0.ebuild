# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A JSONRPC client library base interface"
HOMEPAGE="http://github.com/emlove/jsonrpc-base"
SRC_URI="https://files.pythonhosted.org/packages/b9/54/0b20d7e5e32221d759ad8f4282c03ceb54be6e48b4ff641affd35131f4ce/jsonrpc-base-2.2.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
