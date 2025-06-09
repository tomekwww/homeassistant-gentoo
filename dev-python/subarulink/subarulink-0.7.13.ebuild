# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A package for interacting with Subaru Starlink Remote Services API"
HOMEPAGE="https://github.com/G-Two/subarulink"
SRC_URI="https://files.pythonhosted.org/packages/b8/e1/037c16f4edddc0a9398f97385f64838a7d8c37a180d8b8ba5b381862a287/subarulink-0.7.13.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/subarulink-0.7.13"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/stdiomask[${PYTHON_USEDEP}]
"
