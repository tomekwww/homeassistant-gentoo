# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=maturin
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="cryptography is a package which provides cryptographic recipes and primitives to Python developers"
HOMEPAGE="https://pypi.org/project/cryptography/"
SRC_URI="https://files.pythonhosted.org/packages/a7/fe/c5fc4dc19d4547261b35abfa0df9f75cae692c40ca2c896b9b0e50402b45/cryptography-45.0.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/cryptography-45.0.1"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/cffi-1.14.0[${PYTHON_USEDEP}]
"
