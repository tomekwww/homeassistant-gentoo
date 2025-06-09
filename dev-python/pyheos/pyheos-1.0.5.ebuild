# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An async python library for controlling HEOS devices through the HEOS CLI Protocol"
HOMEPAGE="https://pypi.org/project/pyheos/"
SRC_URI="https://files.pythonhosted.org/packages/0e/91/221b3daa096ec1080cce351738b0359f19a09051f404f28d7d6f98c5ef7b/pyheos-1.0.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyheos-1.0.5"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
