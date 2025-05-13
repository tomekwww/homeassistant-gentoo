# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Get realtime info on stop passages of De Lijn apidelijnbe"
HOMEPAGE="https://github.com/bollewolle/pydelijn"
SRC_URI="https://files.pythonhosted.org/packages/6d/72/c3b2782bd5b28c0c97a94433c1defe5ef817eb973104f223e8beaba75b2b/pydelijn-1.1.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.6.2[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	<dev-python/async-timeout-5.0.0[${PYTHON_USEDEP}]
	>=dev-python/async-timeout-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/pytz-2020.1.0[${PYTHON_USEDEP}]
"
