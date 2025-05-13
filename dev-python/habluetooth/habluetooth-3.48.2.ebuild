# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="High availability Bluetooth"
HOMEPAGE="https://pypi.org/project/habluetooth/"
SRC_URI="https://files.pythonhosted.org/packages/ce/ff/35d6c582109913cbfeef4233df109072f03e4896328405e1b3c36d76a4c9/habluetooth-3.48.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/async-interrupt-1.1.1[${PYTHON_USEDEP}]
	>=dev-python/bleak-0.21.1[${PYTHON_USEDEP}]
	>=dev-python/bleak-retry-connector-3.9.0[${PYTHON_USEDEP}]
	>=dev-python/bluetooth-adapters-0.16.1[${PYTHON_USEDEP}]
	>=dev-python/bluetooth-auto-recovery-1.5.1[${PYTHON_USEDEP}]
	>=dev-python/bluetooth-data-tools-1.28.0[${PYTHON_USEDEP}]
	>=dev-python/dbus-fast-2.30.2[${PYTHON_USEDEP}]
"
