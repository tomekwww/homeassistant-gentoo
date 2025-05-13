# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A GeoRSS generic client library"
HOMEPAGE="https://github.com/exxamalte/python-georss-generic-client"
SRC_URI="https://files.pythonhosted.org/packages/81/bf/e00e994a124dcb9801dcdd825a8b615a69fd96838b1c05fa48b257df6981/georss_generic_client-0.8.tar.gz -> ${P}.gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/georss-client-0.17.0[${PYTHON_USEDEP}]
"
