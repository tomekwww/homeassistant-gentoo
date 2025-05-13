# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library for controlling a Harman Kardon AVR"
HOMEPAGE="https://github.com/Devqon/hkavr"
SRC_URI="https://files.pythonhosted.org/packages/49/c8/f90b4350a3012d3757ec8581947d76d37c40cb2f9c38a258af26079e7daa/hkavr-0.0.5.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
"
