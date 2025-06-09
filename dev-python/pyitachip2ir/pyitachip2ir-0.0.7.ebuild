# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A library for sending IR commands to an ITach IP2IR gateway"
HOMEPAGE="https://github.com/alanfischer/itachip2ir"
SRC_URI="https://files.pythonhosted.org/packages/3e/c5/115f66951b1ecc81b37edd1067064255b5b96be5c60179fe972901c76c1b/pyitachip2ir-0.0.7.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyitachip2ir-0.0.7"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
