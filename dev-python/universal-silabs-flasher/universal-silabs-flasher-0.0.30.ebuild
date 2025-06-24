# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Tool to flash firmware onto any Silicon Labs radio running EmberZNet CPC multiPAN or just a bare Gecko Bootloader"
HOMEPAGE="https://pypi.org/project/universal-silabs-flasher/"
SRC_URI="https://files.pythonhosted.org/packages/ed/45/620f77fc494e6e96c9a6b9de08967e830f849887b26dc945dfb3e4ba79d4/universal_silabs_flasher-0.0.30.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/universal_silabs_flasher-0.0.30"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/typing-extensions[${PYTHON_USEDEP}]
	dev-python/pyserial-asyncio-fast[${PYTHON_USEDEP}]
	dev-python/aiohttp[${PYTHON_USEDEP}]
	>=dev-python/click-8.0.0[${PYTHON_USEDEP}]
	>=dev-python/zigpy-0.70.0[${PYTHON_USEDEP}]
	dev-python/crc[${PYTHON_USEDEP}]
	>=dev-python/bellows-0.42.0[${PYTHON_USEDEP}]
	dev-python/gpiod[${PYTHON_USEDEP}]
	dev-python/coloredlogs[${PYTHON_USEDEP}]
"
