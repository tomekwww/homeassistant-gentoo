# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python library for SNMP"
HOMEPAGE="https://github.com/lextudio/pysnmp"
SRC_URI="https://files.pythonhosted.org/packages/bc/a2/1d0f9cb0cff7e45c651be1ce9b646d0cc837697bc030fc9ffb90247303d4/pysnmp-6.2.6.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pysnmp-6.2.6"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/pyasn1-0.4.8[${PYTHON_USEDEP}]
	<dev-python/pysnmpcrypto-0.0.5[${PYTHON_USEDEP}]
	>=dev-python/pysnmpcrypto-0.0.4[${PYTHON_USEDEP}]
	>=dev-python/pysmi-1.3.0[${PYTHON_USEDEP}]
	<dev-python/pysmi-2.0.0[${PYTHON_USEDEP}]
"
