# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python implementation of the La Marzocco API"
HOMEPAGE="https://pypi.org/project/pylamarzocco/"
SRC_URI="https://files.pythonhosted.org/packages/9a/b7/4f8ea02f9c6f76ab8ca622ebd7acbc813d04d63e5b8ad58deccd708bb089/pylamarzocco-2.0.8.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pylamarzocco-2.0.8"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/bleak-0.20.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.8.0[${PYTHON_USEDEP}]
	>=dev-python/mashumaro-3.0.0[${PYTHON_USEDEP}]
"
