# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Aranet Python client"
HOMEPAGE="https://github.com/Anrijs/Aranet4-Python"
SRC_URI="https://files.pythonhosted.org/packages/01/c0/a2d5f032de3b25e99d39a67fc0b0f1a7fbb5964189a53910a57f5d23cac9/aranet4-2.5.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
