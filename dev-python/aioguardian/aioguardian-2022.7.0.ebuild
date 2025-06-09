# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python3 library for Elexa Guardian water valves and sensors"
HOMEPAGE="https://github.com/bachya/aioguardian"
SRC_URI="https://files.pythonhosted.org/packages/9e/b9/0f1b58449b728914dbbbb54e0035997dbcb50b5268c59aae5fdd2d81eb41/aioguardian-2022.7.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aioguardian-2022.7.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.8.0[${PYTHON_USEDEP}]
	<dev-python/asyncio-dgram-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/asyncio-dgram-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/voluptuous-0.11.7[${PYTHON_USEDEP}]
"
