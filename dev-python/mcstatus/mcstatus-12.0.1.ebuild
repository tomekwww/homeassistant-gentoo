# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A library to query Minecraft Servers for their status and capabilities"
HOMEPAGE="https://pypi.org/project/mcstatus/"
SRC_URI="https://files.pythonhosted.org/packages/b4/58/888ae2cb7cff8013f4c85809865c773d37202f23aa9a3fc2831710ff8d43/mcstatus-12.0.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/asyncio-dgram-2.1.2[${PYTHON_USEDEP}]
	>=dev-python/dnspython-2.4.2[${PYTHON_USEDEP}]
"
