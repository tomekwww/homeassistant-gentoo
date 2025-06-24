# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for talking to a MySensors gateway"
HOMEPAGE="https://github.com/theolind/pymysensors"
SRC_URI="https://files.pythonhosted.org/packages/b9/b7/5e3b5e8bf45feaa71836a0f6d57289ea0ea55f15e82053dc4fa79a2b14e6/pymysensors-0.24.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pymysensors-0.24.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/awesomeversion[${PYTHON_USEDEP}]
	dev-python/click[${PYTHON_USEDEP}]
	>=dev-python/crcmod-1.7.0[${PYTHON_USEDEP}]
	dev-python/getmac[${PYTHON_USEDEP}]
	>=dev-python/intelhex-2.2.1[${PYTHON_USEDEP}]
	>=dev-python/pyserial-3.4.0[${PYTHON_USEDEP}]
	>=dev-python/pyserial-asyncio-0.4.0[${PYTHON_USEDEP}]
	>=dev-python/voluptuous-0.11.1[${PYTHON_USEDEP}]
"
