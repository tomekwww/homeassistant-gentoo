# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Coinbase Advanced API Python SDK"
HOMEPAGE="https://github.com/coinbase/coinbase-advanced-py"
SRC_URI="https://files.pythonhosted.org/packages/9b/18/c79369fd09857f1c7a373c40dd7a49b9794feb589eb57c657c9f46625e5f/coinbase-advanced-py-1.2.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/coinbase-advanced-py-1.2.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.31.0[${PYTHON_USEDEP}]
	>=dev-python/cryptography-42.0.4[${PYTHON_USEDEP}]
	>=dev-python/pyjwt-2.8.0[${PYTHON_USEDEP}]
	>=dev-python/websockets-12.0.0[${PYTHON_USEDEP}]
	<dev-python/websockets-14.0.0[${PYTHON_USEDEP}]
	>=dev-python/backoff-2.2.1[${PYTHON_USEDEP}]
"
