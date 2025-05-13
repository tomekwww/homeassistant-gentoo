# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python client to retrieve data provided by DWD via their geoserver WFS API"
HOMEPAGE="https://github.com/stephan192/dwdwfsapi"
SRC_URI="https://files.pythonhosted.org/packages/47/e8/2446f2b806b7406e515d2956c87882e2b076b723c9073ddd9dc0cca6b5e3/dwdwfsapi-1.0.7.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.23.0[${PYTHON_USEDEP}]
	<dev-python/requests-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/ciso8601-2.1.3[${PYTHON_USEDEP}]
	<dev-python/ciso8601-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/urllib3-1.25.8[${PYTHON_USEDEP}]
	<dev-python/urllib3-3.0.0[${PYTHON_USEDEP}]
"
