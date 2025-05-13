# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Pencom relay controller over Ethernet"
HOMEPAGE="https://github.com/dubnom/pencompy"
SRC_URI="https://files.pythonhosted.org/packages/a1/ca/383d30119aacc23440e9d00923a06bf317cc85f6d839b8152f9df6dbf1dd/pencompy-0.0.3.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
