# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Our Groceries Unofficial Python Package"
HOMEPAGE="https://github.com/ljmerza/py-our-groceries"
SRC_URI="https://files.pythonhosted.org/packages/59/f5/8c6d796fc487245a118113ffad24e843a383e96882bf1f8fad06e93e4b91/ourgroceries-1.5.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/ourgroceries-1.5.4"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.6.1[${PYTHON_USEDEP}]
	>=dev-python/beautifulsoup4-4.7.1[${PYTHON_USEDEP}]
"
