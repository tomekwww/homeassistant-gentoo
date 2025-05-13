# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Parse London tube data into a dictionary"
HOMEPAGE="https://github.com/robmarkcole/London-tube-status"
SRC_URI="https://files.pythonhosted.org/packages/8a/27/f36d7dd851778906f1669fe61751bde840718d499bde0900ab670b442694/london-tube-status-0.5.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
"
