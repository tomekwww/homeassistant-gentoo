# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="UART Devices for Linux"
HOMEPAGE="https://pypi.org/project/uart-devices/"
SRC_URI="https://files.pythonhosted.org/packages/dd/08/a8fd6b3dd2cb92344fb4239d4e81ee121767430d7ce71f3f41282f7334e0/uart_devices-0.1.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
