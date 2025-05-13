# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION=""
HOMEPAGE="https://github.com/Crownstone-Community/crownstone-lib-python-cloud"
SRC_URI="https://files.pythonhosted.org/packages/49/93/04b79cfc0a5ba5ba4bbaaaeef721733ec8d347a3f01c6a68f89fa8c5d1ec/crownstone_cloud-1.4.11.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.7.0[${PYTHON_USEDEP}]
	dev-python/certifi[${PYTHON_USEDEP}]
"
