# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="cryptography is a package which provides cryptographic recipes and primitives to Python developers"
HOMEPAGE="https://pypi.org/project/cryptography/"
SRC_URI="https://files.pythonhosted.org/packages/0d/05/07b55d1fa21ac18c3a8c79f764e2514e6f6a9698f1be44994f5adf0d29db/cryptography-43.0.3.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/cffi-1.12.0[${PYTHON_USEDEP}]
	>=dev-python/bcrypt-3.1.5[${PYTHON_USEDEP}]
	dev-python/nox[${PYTHON_USEDEP}]
	dev-python/build[${PYTHON_USEDEP}]
"
