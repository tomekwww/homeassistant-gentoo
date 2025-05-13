# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Lutron Homeworks Series 4 and 8 interface over Ethernet"
HOMEPAGE="https://pypi.org/project/pyhomeworks/"
SRC_URI="https://files.pythonhosted.org/packages/2c/81/4f2f5c388b58b79c195fbdd5346845145e97f01777bdc108eade0fb56310/pyhomeworks-1.1.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
