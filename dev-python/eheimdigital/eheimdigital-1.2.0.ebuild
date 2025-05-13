# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Offers a Python API for the EHEIM Digital smart aquarium devices"
HOMEPAGE="https://pypi.org/project/eheimdigital/"
SRC_URI="https://files.pythonhosted.org/packages/28/be/0258a66b94eea5f97706bcb95f0e4640822433cf64ed34c10c0c4abb132c/eheimdigital-1.2.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/yarl[${PYTHON_USEDEP}]
"
