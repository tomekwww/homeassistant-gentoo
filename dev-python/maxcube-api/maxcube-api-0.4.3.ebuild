# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="eQ3ELV MAX Cube Python API"
HOMEPAGE="https://github.com/hackercowboy/python-maxcube-api.git"
SRC_URI="https://files.pythonhosted.org/packages/82/e6/35ac48f8c1b0a09fc72868e709993a37caaf1e995ac34d3b4c3137502582/maxcube-api-0.4.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/maxcube-api-0.4.3"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
