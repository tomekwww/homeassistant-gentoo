# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python interface for Hisense AEHW4A1 module"
HOMEPAGE="https://github.com/bannhead/pyaehw4a1"
SRC_URI="https://files.pythonhosted.org/packages/00/40/27924ff7b9b42bb195e12331d9eb406b9d5efe83ca84c089c79df3084a5c/pyaehw4a1-0.3.9.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyaehw4a1-0.3.9"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
