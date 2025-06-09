# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A library to get and set values of the EZcontrol XS1 Gateway"
HOMEPAGE="https://github.com/markusressel/xs1-api-client"
SRC_URI="https://files.pythonhosted.org/packages/2d/3f/9124f11f9464f7030db1337b1c32b57ead7a30572f78183565db3509733f/xs1_api_client-3.0.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/xs1_api_client-3.0.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/urllib3[${PYTHON_USEDEP}]
"
