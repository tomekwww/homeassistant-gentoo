# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python wrapper for NextDNS API"
HOMEPAGE="https://github.com/bieniu/nextdns"
SRC_URI="https://files.pythonhosted.org/packages/58/a8/d31990b43451493e82e83a93d9f75e78bd509df489f17abc728dbc68c2f6/nextdns-4.0.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/nextdns-4.0.0"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.9.4[${PYTHON_USEDEP}]
	dev-python/tenacity[${PYTHON_USEDEP}]
"
