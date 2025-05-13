# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Async Python39 package to access the Tomorrowio API"
HOMEPAGE="https://github.com/raman325/pytomorrowio"
SRC_URI="https://files.pythonhosted.org/packages/a1/f3/e91d61bb3f8ffa5ae58e9e11217a049f97709e03056776410ff81f763d03/pytomorrowio-0.3.6.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.6.2[${PYTHON_USEDEP}]
"
