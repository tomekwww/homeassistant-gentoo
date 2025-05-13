# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A library which communicates with XBee radios for zigpy"
HOMEPAGE="https://pypi.org/project/zigpy-xbee/"
SRC_URI="https://files.pythonhosted.org/packages/7e/1d/08722224802b6558c0dd13d83198aa3973825123801c4f72951b89347035/zigpy_xbee-0.21.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/zigpy-0.70.0[${PYTHON_USEDEP}]
"
