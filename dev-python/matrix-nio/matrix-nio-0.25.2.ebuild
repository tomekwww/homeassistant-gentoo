# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python Matrix client library designed according to sans IO principles"
HOMEPAGE="https://pypi.org/project/matrix-nio/"
SRC_URI="https://files.pythonhosted.org/packages/33/50/c20129fd6f0e1aad3510feefd3229427fc8163a111f3911ed834e414116b/matrix_nio-0.25.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/matrix_nio-0.25.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.10.0[${PYTHON_USEDEP}]
	<dev-python/aiofiles-25.1.0[${PYTHON_USEDEP}]
	<dev-python/h11-1.14.0[${PYTHON_USEDEP}]
	<dev-python/h2-5.0.0[${PYTHON_USEDEP}]
	<dev-python/jsonschema-5.14.0[${PYTHON_USEDEP}]
	<dev-python/unpaddedbase64-3.1.0[${PYTHON_USEDEP}]
	<dev-python/pycryptodome-4.10.0[${PYTHON_USEDEP}]
	<dev-python/aiohttp-socks-1.8.0[${PYTHON_USEDEP}]
"
