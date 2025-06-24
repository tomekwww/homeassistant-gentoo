# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Home Assistant helper lib for the IKEA Idasen Desk integration"
HOMEPAGE="https://pypi.org/project/idasen-ha/"
SRC_URI="https://files.pythonhosted.org/packages/3b/f0/640fbdffec4533fb308eb1b1791e9066bc88e02a1c86312ad3aaa3ae2275/idasen_ha-2.6.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/idasen_ha-2.6.3"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<=dev-python/idasen-0.12.0[${PYTHON_USEDEP}]
	>=dev-python/idasen-0.10.0[${PYTHON_USEDEP}]
"
