# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An async resolver for aiohttp that supports MDNS"
HOMEPAGE="https://pypi.org/project/aiohttp-asyncmdnsresolver/"
SRC_URI="https://files.pythonhosted.org/packages/05/83/09fb97705e7308f94197a09b486669696ea20f28074c14b5811a38bdedc3/aiohttp_asyncmdnsresolver-0.1.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiohttp_asyncmdnsresolver-0.1.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiodns-3.2.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.10.0[${PYTHON_USEDEP}]
	>=dev-python/zeroconf-0.142.0[${PYTHON_USEDEP}]
"
