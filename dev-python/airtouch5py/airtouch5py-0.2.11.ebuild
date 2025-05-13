# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION=""
HOMEPAGE="https://pypi.org/project/airtouch5py/"
SRC_URI="https://files.pythonhosted.org/packages/d1/c1/2ee96405ec91a47e9454edfd81828629c4f27400bad6d8584470ffb92b14/airtouch5py-0.2.11.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/bitarray-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/bitarray-2.8.0[${PYTHON_USEDEP}]
	>=dev-python/crc-4.3.0[${PYTHON_USEDEP}]
	<dev-python/crc-5.0.0[${PYTHON_USEDEP}]
"
