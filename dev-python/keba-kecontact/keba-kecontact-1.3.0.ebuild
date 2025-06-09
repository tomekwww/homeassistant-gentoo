# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python library to communicate with the KEBA charging stations via udp"
HOMEPAGE="https://pypi.org/project/keba_kecontact/"
SRC_URI="https://files.pythonhosted.org/packages/98/f5/da5f5f651f77ff66fad5dfda7083908fadcd62a999ed907ad474c57dc36f/keba_kecontact-1.3.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/keba_kecontact-1.3.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/asyncio-dgram-2.2.0[${PYTHON_USEDEP}]
"
