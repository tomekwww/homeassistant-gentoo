# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Opensource home automation platform running on Python 3"
HOMEPAGE="https://pypi.org/project/velbus-aio/"
SRC_URI="https://files.pythonhosted.org/packages/0f/fc/ec773e5af1c3f4b883374c25da782212b5e0601b1819cd3ab4f634f1329d/velbus_aio-2025.5.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/velbus_aio-2025.5.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/pyserial-3.5.0[${PYTHON_USEDEP}]
	>=dev-python/pyserial-asyncio-fast-0.11.0[${PYTHON_USEDEP}]
	>=dev-python/backoff-1.10.0[${PYTHON_USEDEP}]
	dev-python/aiofile[${PYTHON_USEDEP}]
"
