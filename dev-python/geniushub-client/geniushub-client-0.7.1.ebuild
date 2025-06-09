# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An aiohttpbased client for Genius Hub systems"
HOMEPAGE="https://github.com/manzanotti/geniushub-client"
SRC_URI="https://files.pythonhosted.org/packages/a4/08/91577ed44a51010db08f4ec59ab8f31d49182bb5d7d2d729194b8c35057f/geniushub-client-0.7.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/geniushub-client-0.7.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
"
