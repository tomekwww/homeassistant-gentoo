# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Renault API"
HOMEPAGE="https://pypi.org/project/renault-api/"
SRC_URI="https://files.pythonhosted.org/packages/48/1c/9da1a95f8802d6c4078b42c1cf9bbf23934c22643cd0cafc48e22f282a2f/renault_api-0.3.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/renault_api-0.3.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/pyjwt-2.8.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.9.5[${PYTHON_USEDEP}]
	>=dev-python/cffi-1.17.0[${PYTHON_USEDEP}]
	>=dev-python/cryptography-44.0.0[${PYTHON_USEDEP}]
	>=dev-python/marshmallow-dataclass-8.2.0[${PYTHON_USEDEP}]
"
