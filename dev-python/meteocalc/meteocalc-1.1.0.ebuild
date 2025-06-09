# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Functions for calculation of meteorological variables"
HOMEPAGE="https://github.com/malexer/meteocalc"
SRC_URI="https://files.pythonhosted.org/packages/6c/f7/95473a929f0a02547461fa3698b7f8082ff40445ba5e21601f5d9a5e48ec/meteocalc-1.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/meteocalc-1.1.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
