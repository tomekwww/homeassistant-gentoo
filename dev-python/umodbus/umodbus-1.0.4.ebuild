# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Implementation of the Modbus protocol in pure Python"
HOMEPAGE="https://github.com/AdvancedClimateSystems/umodbus/"
SRC_URI="https://files.pythonhosted.org/packages/c1/13/5eb635dd6ab67fedcfe5147209135a737d33c1220fdf4ad735a224a8a684/uModbus-1.0.4.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/pyserial-4.4.0[${PYTHON_USEDEP}]
"
