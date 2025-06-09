# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous Python client for WAQI API"
HOMEPAGE="https://github.com/joostlek/python-waqi"
SRC_URI="https://files.pythonhosted.org/packages/01/14/c52f0a26ab0c082a2e186ff70eaa4d0164964eb83044ede60fa438d79727/aiowaqi-3.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiowaqi-3.1.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.6.0[${PYTHON_USEDEP}]
"
