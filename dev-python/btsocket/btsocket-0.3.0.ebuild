# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library for BlueZ Bluetooth Management API"
HOMEPAGE="https://github.com/ukBaz/python-btsocket"
SRC_URI="https://files.pythonhosted.org/packages/b2/b1/0ae262ecf936f5d2472ff7387087ca674e3b88d8c76b3e0e55fbc0c6e956/btsocket-0.3.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/btsocket-0.3.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
