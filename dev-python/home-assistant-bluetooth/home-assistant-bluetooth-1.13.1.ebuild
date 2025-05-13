# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Home Assistant Bluetooth Models and Helpers"
HOMEPAGE="https://pypi.org/project/home-assistant-bluetooth/"
SRC_URI="https://files.pythonhosted.org/packages/b4/0e/c05ee603cab1adb847a305bc8f1034cbdbc0a5d15169fcf68c0d6d21e33f/home_assistant_bluetooth-1.13.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/habluetooth-3.0.0[${PYTHON_USEDEP}]
"
