# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A fully featured modbus protocol stack in python"
HOMEPAGE="https://pypi.org/project/pymodbus/"
SRC_URI="https://files.pythonhosted.org/packages/f7/c7/95ad9774e7ba8547f52d657b09fee7fa02d87532866f561c6d2bb9068b8c/pymodbus-3.8.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pymodbus-3.8.3"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
