# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An asynchronous modem implementation designed for Home Assistant for receiving caller id and call rejection"
HOMEPAGE="https://github.com/tkdrob/phone_modem"
SRC_URI="https://files.pythonhosted.org/packages/50/8f/b5a70d4021f987308d0cf58b5e369befb49cada70a44f39a75dbafc76d82/phone_modem-0.1.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/phone_modem-0.1.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	~dev-python/aioserial-1.3.0[${PYTHON_USEDEP}]
"
