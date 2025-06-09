# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Teslemetry Streaming API library for Python"
HOMEPAGE="https://pypi.org/project/teslemetry-stream/"
SRC_URI="https://files.pythonhosted.org/packages/d1/0f/11b8862a80fd21f244496fcbc773706925c808688366c91ecf4dac968dee/teslemetry_stream-0.7.9.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/teslemetry_stream-0.7.9"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
"
