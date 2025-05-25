# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Python bindings for libmongocrypt"
HOMEPAGE="https://pypi.org/project/pymongocrypt/"
SRC_URI="https://files.pythonhosted.org/packages/fb/af/19940e35fff5a5d3a5c601394815acdbe57992509b72a6b5c5e473af5856/pymongocrypt-1.14.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/cffi-1.12.0[${PYTHON_USEDEP}]
	<dev-python/cffi-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/cryptography-40.0.0[${PYTHON_USEDEP}]
	>=dev-python/httpx-0.25.0[${PYTHON_USEDEP}]
	>=dev-python/packaging-21.0.0[${PYTHON_USEDEP}]
"
