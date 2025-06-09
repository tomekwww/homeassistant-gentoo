# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library to control the Lagute LW12 WiFi LED controller"
HOMEPAGE="https://github.com/jaypikay/python-lw12"
SRC_URI="https://files.pythonhosted.org/packages/02/8b/8dca131920905a4d5efd563b95a19163ab1e4e567671ca58e859332e2b01/lw12-0.9.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/lw12-0.9.2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
