# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Websocket Client Library"
HOMEPAGE="https://github.com/wildfoundry/dataplicity-lomond"
SRC_URI="https://files.pythonhosted.org/packages/c0/9e/ef7813c910d4a893f2bc763ce9246269f55cc68db21dc1327e376d6a2d02/lomond-0.3.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/lomond-0.3.3"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/six-1.10.0[${PYTHON_USEDEP}]
"
