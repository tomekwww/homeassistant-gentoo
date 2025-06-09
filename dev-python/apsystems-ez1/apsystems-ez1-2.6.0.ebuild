# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="The APsystems EZ1 Python library offers a streamlined interface for interacting with the local API of APsystems EZ1 Microinverters"
HOMEPAGE="https://pypi.org/project/apsystems-ez1/"
SRC_URI="https://files.pythonhosted.org/packages/bc/5f/4ebe4c7a74120635aa230cccdd4a3e45f087c7899f277e8808a33d3a1a74/apsystems_ez1-2.6.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/apsystems_ez1-2.6.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.0.0[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
"
