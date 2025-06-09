# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library for interacting with the Nissan Leaf Carwings telematics service"
HOMEPAGE="https://github.com/filcole/pycarwings2"
SRC_URI="https://files.pythonhosted.org/packages/9f/a2/e2163a5f55f89c52b37c4fad43c3a19951eba1314ce83acfc8d2a3f06d33/pycarwings2-2.14.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pycarwings2-2.14"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/pyyaml[${PYTHON_USEDEP}]
	dev-python/iso8601[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/pycryptodome[${PYTHON_USEDEP}]
"
