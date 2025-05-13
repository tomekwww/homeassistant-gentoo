# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python library to control Volumio"
HOMEPAGE="https://github.com/OnFreund/PyVolumio"
SRC_URI="https://files.pythonhosted.org/packages/02/36/58543cc0422bda2af5429d5df85cee810d09b900dbc5bcd2e95bc07b4424/pyvolumio-0.1.5.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
"
