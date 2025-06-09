# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Client for Fronius SolarAPI JSON interface"
HOMEPAGE="https://pypi.org/project/PyFronius/"
SRC_URI="https://files.pythonhosted.org/packages/33/47/65a360e2206ebf8f1117fe16bcd2710a8e3788c32385abff6c24d80543a1/pyfronius-0.8.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyfronius-0.8.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
"
