# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous Python client for Modern Forms fans"
HOMEPAGE="https://github.com/wonderslug/aiomodernforms"
SRC_URI="https://files.pythonhosted.org/packages/80/c3/889b1728c7279e3350d0e8f21b691b0f5967c8e71d83d79362c5df6184f6/aiomodernforms-0.1.8.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiomodernforms-0.1.8"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.0.0[${PYTHON_USEDEP}]
	dev-python/yarl[${PYTHON_USEDEP}]
	>=dev-python/backoff-1.9.0[${PYTHON_USEDEP}]
"
