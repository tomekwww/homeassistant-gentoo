# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A simple Python API data from openuvio"
HOMEPAGE="https://github.com/bachya/pyopenuv"
SRC_URI="https://files.pythonhosted.org/packages/d3/f8/4de186395f762260a5ba2b71d770fbbd2559f031a3d887369a2e066af256/pyopenuv-2023.2.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyopenuv-2023.2.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.8.0[${PYTHON_USEDEP}]
	<dev-python/asynctest-0.14.0[${PYTHON_USEDEP}]
	>=dev-python/asynctest-0.13.0[${PYTHON_USEDEP}]
"
