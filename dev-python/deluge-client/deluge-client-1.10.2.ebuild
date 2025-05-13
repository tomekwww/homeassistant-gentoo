# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Simple Deluge Client"
HOMEPAGE="https://github.com/JohnDoee/deluge-client"
SRC_URI="https://files.pythonhosted.org/packages/f1/53/d6672ad7b44190d578ce7520822af34e7119760df9934cad4d730b0592a2/deluge-client-1.10.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
