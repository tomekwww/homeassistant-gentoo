# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A library to fetch data from the Swiss federal Office for Environment FEON"
HOMEPAGE="https://github.com/bouni/swisshydrodata"
SRC_URI="https://files.pythonhosted.org/packages/03/2e/f5b256831944adf5898ec0db2bab0427ebddf3ebbccef83ac72276e0b0a0/swisshydrodata-0.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/swisshydrodata-0.1.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
