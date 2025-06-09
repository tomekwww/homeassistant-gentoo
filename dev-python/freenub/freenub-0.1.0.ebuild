# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="This is a fork of pubnub when it still had an MIT license"
HOMEPAGE="https://github.com/bdraco/freenub"
SRC_URI="https://files.pythonhosted.org/packages/d6/d1/06706fe0b05d8bfb2d6e6932a6b3b6715c3672635f402b1d1d54c40a81aa/freenub-0.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/freenub-0.1.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.9.5[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	<dev-python/cbor2-6.0.0[${PYTHON_USEDEP}]
	>=dev-python/cbor2-5.6.4[${PYTHON_USEDEP}]
	>=dev-python/pycryptodomex-3.3.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.4.0[${PYTHON_USEDEP}]
"
