# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Tools to fetch zoneinfo with asyncio"
HOMEPAGE="https://pypi.org/project/aiozoneinfo/"
SRC_URI="https://files.pythonhosted.org/packages/40/00/e437a179ab78ed24780ded10bbb5d7e10832c07f62eab1d44ee2f335c95c/aiozoneinfo-0.2.3.tar.gz -> ${P}.gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/tzdata-2024.1.0[${PYTHON_USEDEP}]
"
