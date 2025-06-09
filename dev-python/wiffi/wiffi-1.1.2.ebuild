# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python 3 package to interface devices from STALL WIFFI"
HOMEPAGE="https://github.com/mampfes/python-wiffi"
SRC_URI="https://files.pythonhosted.org/packages/6f/e7/84145ef1492540ad1879f3e607f9b055a45d81798a6a2cccbc9601c6164f/wiffi-1.1.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/wiffi-1.1.2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
