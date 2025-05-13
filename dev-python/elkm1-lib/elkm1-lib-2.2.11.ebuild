# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library for interacting with ElkM1 alarmautomation panel"
HOMEPAGE="https://pypi.org/project/elkm1-lib/"
SRC_URI="https://files.pythonhosted.org/packages/86/8d/e4c2bac1d4e455d3a048fc67493234daa8266d81affc18024b81637cb8bf/elkm1_lib-2.2.11.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/pyserial-asyncio-fast-0.11.0[${PYTHON_USEDEP}]
"
