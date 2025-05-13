# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="This module performs conversions between Python values and C bit field structs represented as Python byte strings"
HOMEPAGE="https://pypi.org/project/bitstruct/"
SRC_URI="https://files.pythonhosted.org/packages/ae/f5/ba6bf7ab575a095bb3d76ef40cccd4e60b1bda9996bfba8e640d54c00488/bitstruct-8.21.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
