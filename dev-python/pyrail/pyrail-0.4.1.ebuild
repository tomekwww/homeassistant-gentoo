# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python wrapper for the iRail API"
HOMEPAGE="https://github.com/tjorim/pyrail"
SRC_URI="https://files.pythonhosted.org/packages/f6/9e/1fb9cf702fac8cbd82362fb110731001bf115df4f48bdfc1b4f193b3377e/pyrail-0.4.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyrail-0.4.1"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.11.11[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/mashumaro-3.15.0[${PYTHON_USEDEP}]
	<dev-python/mashumaro-4.0.0[${PYTHON_USEDEP}]
"
