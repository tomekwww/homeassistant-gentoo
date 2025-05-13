# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="ReactiveX Rx for Python"
HOMEPAGE="http://reactivex.io"
SRC_URI="https://files.pythonhosted.org/packages/ef/63/f776322df4d7b456446eff78c4e64f14c3c26d57d46b4e06c18807d5d99c/reactivex-4.0.4.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/typing-extensions-5.0.0[${PYTHON_USEDEP}]
	>=dev-python/typing-extensions-4.1.1[${PYTHON_USEDEP}]
"
