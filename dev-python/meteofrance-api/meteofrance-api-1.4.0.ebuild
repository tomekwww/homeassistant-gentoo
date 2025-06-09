# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python client for MtoFrance API"
HOMEPAGE="https://github.com/hacf-fr/meteofrance-api"
SRC_URI="https://files.pythonhosted.org/packages/87/15/1c8fe7e537042e9d83d5fc4707c2632483c95194418b7cf75fc261739674/meteofrance_api-1.4.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/meteofrance_api-1.4.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/pytz-2024.1.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.32.3[${PYTHON_USEDEP}]
	<dev-python/requests-3.0.0[${PYTHON_USEDEP}]
"
