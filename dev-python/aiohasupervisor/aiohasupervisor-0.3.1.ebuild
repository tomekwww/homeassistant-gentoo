# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous python client for Home Assistant Supervisor"
HOMEPAGE="https://pypi.org/project/aiohasupervisor/"
SRC_URI="https://files.pythonhosted.org/packages/28/c2/cd208f6b6bc78675130a4ed883bfd6de3e401131233ee85c4e3f6c231166/aiohasupervisor-0.3.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiohasupervisor-0.3.1"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.3.0[${PYTHON_USEDEP}]
	<dev-python/mashumaro-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/mashumaro-3.11.0[${PYTHON_USEDEP}]
	<dev-python/orjson-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/orjson-3.6.1[${PYTHON_USEDEP}]
"
