# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Metar  a package to parse METARcoded weather reports"
HOMEPAGE="https://github.com/python-metar/python-metar"
SRC_URI="https://files.pythonhosted.org/packages/b1/9f/a3444d145b833699c603ed87b5565dcb2ebf9235d85f8229bb25c5047b37/metar-1.11.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/metar-1.11.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
