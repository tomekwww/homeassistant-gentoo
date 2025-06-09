# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python3 library to communicate with Airthings devices"
HOMEPAGE="https://github.com/Danielhiversen/pyAirthings"
SRC_URI="https://files.pythonhosted.org/packages/21/36/840f97a2c263aa47163604a38cf2e46d97fab035d6bceec16ae78738cc67/airthings_cloud-0.2.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/airthings_cloud-0.2.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.0.6[${PYTHON_USEDEP}]
	>=dev-python/async-timeout-3.0.0[${PYTHON_USEDEP}]
"
