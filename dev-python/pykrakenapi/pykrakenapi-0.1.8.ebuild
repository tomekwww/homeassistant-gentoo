# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python implementation of the Kraken API"
HOMEPAGE="https://github.com/dominiktraxl/pykrakenapi/"
SRC_URI="https://files.pythonhosted.org/packages/6a/3f/32e3ac15dc7dca68481276e4c5eca43d53f4490f9c8bc80f7aa40130898f/pykrakenapi-0.1.8.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pykrakenapi-0.1.8"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
