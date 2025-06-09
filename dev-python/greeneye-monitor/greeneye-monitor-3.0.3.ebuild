# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Receive data packets from GreenEye Monitor httpwwwbrultechcomgreeneye"
HOMEPAGE="https://github.com/jkeljo/greeneye-monitor"
SRC_URI="https://github.com/jkeljo/greeneye-monitor/archive/refs/tags/v3.0.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/greeneye-monitor-3.0.3"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	~dev-python/siobrultech-protocols-0.5.0[${PYTHON_USEDEP}]
"
