# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=flit
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Swing2Sleep Smarla API"
HOMEPAGE="https://pypi.org/project/pysmarlaapi/"
SRC_URI="https://files.pythonhosted.org/packages/99/aa/69c8ec0440156deb894cd34ef87e8594818c8ca695cddf6f0a1b9f996375/pysmarlaapi-0.8.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pysmarlaapi-0.8.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.11.0[${PYTHON_USEDEP}]
	<dev-python/jsonpickle-4.1.0[${PYTHON_USEDEP}]
	<dev-python/pysignalr-1.2.0[${PYTHON_USEDEP}]
"
