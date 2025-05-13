# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A lightweight and fast pure python ECDSA library"
HOMEPAGE="https://github.com/starkbank/ecdsa-python.git"
SRC_URI="https://files.pythonhosted.org/packages/a3/f8/a6091be6a60ed4df9ac806c89fbc5fe1a3416d0284f3ba70aa09a3419428/starkbank-ecdsa-2.2.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
