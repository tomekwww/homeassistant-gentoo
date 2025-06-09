# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Vultrcom API Client"
HOMEPAGE="http://github.com/spry-group/python-vultr"
SRC_URI="https://files.pythonhosted.org/packages/02/f1/8522137833d0c715a86883dfeb64250fbff13c3b895376574f8aedc610f5/vultr-0.1.2.zip -> ${P}.gh.zip"
S="${WORKDIR}/vultr-0.1.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
