# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An async python package for interfacing with Cambridge Audio  Stream Magic compatible streamers"
HOMEPAGE="https://pypi.org/project/aiostreammagic/"
SRC_URI="https://files.pythonhosted.org/packages/04/e6/2a03dd70c81f64526899608fe264236644ac06a590e61144d42b81dbadd6/aiostreammagic-2.11.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiostreammagic-2.11.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.11.7[${PYTHON_USEDEP}]
	<dev-python/mashumaro-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/mashumaro-3.11.0[${PYTHON_USEDEP}]
	>=dev-python/orjson-3.9.0[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.6.0[${PYTHON_USEDEP}]
"
