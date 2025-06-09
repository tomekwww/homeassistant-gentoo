# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION=""
HOMEPAGE="https://github.com/Crownstone-Community/crownstone-lib-python-sse"
SRC_URI="https://files.pythonhosted.org/packages/ac/12/15b146db1fbae092dd15e5356b1f2cd98a2a926e7e52e1e34aea9cefc78c/crownstone_sse-2.0.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/crownstone_sse-2.0.5"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.7.0[${PYTHON_USEDEP}]
	dev-python/certifi[${PYTHON_USEDEP}]
"
