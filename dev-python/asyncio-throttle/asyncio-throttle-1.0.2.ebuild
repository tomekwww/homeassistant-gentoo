# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Simple easytouse throttler for asyncio"
HOMEPAGE="https://github.com/hallazzang/asyncio-throttle"
SRC_URI="https://files.pythonhosted.org/packages/13/6f/0e2d42c0e95d50edf63147b8a742703061945e02760f25d6a0e8f028ccb0/asyncio-throttle-1.0.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
