# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library for calculating CRC16"
HOMEPAGE="http://code.google.com/p/pycrc16"
SRC_URI="https://files.pythonhosted.org/packages/b4/75/816874cdc473c1d3a6a491e12f93fe40839fc0f349c712fa927d314fa12e/pycrc16-0.1.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pycrc16-0.1.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
