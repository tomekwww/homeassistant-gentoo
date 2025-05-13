# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python Protocol Abstraction Library For Arduino Firmata using Python asyncio"
HOMEPAGE="https://mryslab.github.io/pymata-express/"
SRC_URI="https://files.pythonhosted.org/packages/91/d9/230f7d777658a035124998e772434048077067871558047d16db5e549790/pymata-express-1.19.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/pyserial[${PYTHON_USEDEP}]
"
