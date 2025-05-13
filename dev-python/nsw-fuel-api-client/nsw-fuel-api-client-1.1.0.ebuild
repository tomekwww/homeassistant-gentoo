# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="API Client for NSW Government Fuel"
HOMEPAGE="https://github.com/nickw444/nsw-fuel-api-client"
SRC_URI="https://files.pythonhosted.org/packages/8b/92/2113e6b4e2770eb51aba3d4f6024947a12b395cc97f9f5241b4ac99292a2/nsw-fuel-api-client-1.1.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
