# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python library for controlling YeeLight RGB bulbs"
HOMEPAGE="https://pypi.org/project/yeelight/"
SRC_URI="https://files.pythonhosted.org/packages/7a/b4/0332cd347105b57905bb29e7e16b028b4238ed334328b3a776b5946099be/yeelight-0.7.16.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/ifaddr[${PYTHON_USEDEP}]
"
