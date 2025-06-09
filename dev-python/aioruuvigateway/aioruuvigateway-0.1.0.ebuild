# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION=""
HOMEPAGE="https://pypi.org/project/aioruuvigateway/"
SRC_URI="https://files.pythonhosted.org/packages/66/6f/37b79a9f684f4fc87f23f93fa4fdbda5c4c1aee1e7589f9b546f4a601adc/aioruuvigateway-0.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aioruuvigateway-0.1.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/bluetooth-data-tools-0.3.1[${PYTHON_USEDEP}]
	>=dev-python/httpx-0.23.0[${PYTHON_USEDEP}]
"
