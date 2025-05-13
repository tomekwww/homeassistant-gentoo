# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library for local control of Rabbit Air air purifiers"
HOMEPAGE="https://github.com/rabbit-air/python-rabbitair"
SRC_URI="https://files.pythonhosted.org/packages/dd/e7/cd2a8015258e86ec7295ce790b17fb8a042670a29db76865a920c8b5b609/python-rabbitair-0.0.8.tar.gz -> ${P}.gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/cryptography[${PYTHON_USEDEP}]
	dev-python/zeroconf[${PYTHON_USEDEP}]
"
