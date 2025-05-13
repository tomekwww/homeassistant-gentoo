# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Recover bluetooth adapters that are in an stuck state"
HOMEPAGE="https://pypi.org/project/bluetooth-auto-recovery/"
SRC_URI="https://files.pythonhosted.org/packages/30/01/5c8214e36fdd6866b85d32d55eeeb57dec0d311536fbdcab314a8ab97c29/bluetooth_auto_recovery-1.5.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/pyric-0.1.6[${PYTHON_USEDEP}]
	>=dev-python/bluetooth-adapters-0.16.0[${PYTHON_USEDEP}]
	>=dev-python/btsocket-0.2.0[${PYTHON_USEDEP}]
	>=dev-python/usb-devices-0.4.1[${PYTHON_USEDEP}]
"
