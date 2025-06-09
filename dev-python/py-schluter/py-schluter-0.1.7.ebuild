# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for Schluter DITRAHEAT thermostat"
HOMEPAGE="https://github.com/prairieapps/py-schluter"
SRC_URI="https://files.pythonhosted.org/packages/75/23/85977ef9c34f3061c896460e768f91a712d977847e29670a84921af3d3b6/py-schluter-0.1.7.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/py-schluter-0.1.7"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
