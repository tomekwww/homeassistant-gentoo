# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Query a Quantum Gateway"
HOMEPAGE="https://github.com/cisasteelersfan/quantum_gateway"
SRC_URI="https://files.pythonhosted.org/packages/53/a7/f6fff2fb7bb7f831ead9e8b2a25130f7b98de9b0ffb1b8c5291d0acb4638/quantum_gateway-0.0.8.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/urllib3[${PYTHON_USEDEP}]
	>dev-python/requests-2.20.0[${PYTHON_USEDEP}]
	>dev-python/esprima-4.0.0[${PYTHON_USEDEP}]
"
