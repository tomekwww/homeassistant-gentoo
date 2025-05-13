# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Rijndael algorithm library for Python3"
HOMEPAGE="https://github.com/meyt/py3rijndael"
SRC_URI="https://files.pythonhosted.org/packages/3c/18/82d406b47cce65b884abc077335eb4b74adb4a4b750112fe4a67dc7d4c90/py3rijndael-0.3.3.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
