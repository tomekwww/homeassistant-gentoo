# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Simple wrapper for pyLoads API"
HOMEPAGE="https://pypi.org/project/PyLoadAPI/"
SRC_URI="https://files.pythonhosted.org/packages/ed/4d/b2d2632274a0c51c57e80648483f9561503f0fd21f9ca63f2094e7c06da1/pyloadapi-1.4.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyloadapi-1.4.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.9.0[${PYTHON_USEDEP}]
"
