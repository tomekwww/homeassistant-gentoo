# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A library which communicates with ZiGate radios for zigpy"
HOMEPAGE="https://pypi.org/project/zigpy-zigate/"
SRC_URI="https://files.pythonhosted.org/packages/2f/74/769d9862233e10def084ce5f82fc6a4d6cf4857df966f3a1e1ef8084e2c2/zigpy_zigate-0.13.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/voluptuous[${PYTHON_USEDEP}]
	>=dev-python/zigpy-0.70.0[${PYTHON_USEDEP}]
	>=dev-python/pyusb-1.1.0[${PYTHON_USEDEP}]
	dev-python/gpiozero[${PYTHON_USEDEP}]
"
