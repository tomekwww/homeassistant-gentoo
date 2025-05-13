# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library for Sky Q hub"
HOMEPAGE="https://github.com/RogerSelwyn/skyq_hub"
SRC_URI="https://files.pythonhosted.org/packages/c3/c2/f787b37a294d1a750e1299986ad4777b3f7c967cdd5857fbb6ae7815cf94/pyskyqhub-0.1.4.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.6.2[${PYTHON_USEDEP}]
"
