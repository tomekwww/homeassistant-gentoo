# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Watch for DHCP packets with asyncio"
HOMEPAGE="https://pypi.org/project/aiodhcpwatcher/"
SRC_URI="https://files.pythonhosted.org/packages/99/4a/37c27342d646117f04b8ebae2ba15ae5a406fde2388f9e032040c9b45254/aiodhcpwatcher-1.2.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/scapy-2.5.0[${PYTHON_USEDEP}]
"
