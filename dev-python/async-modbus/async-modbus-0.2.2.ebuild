# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Async ModBus python library"
HOMEPAGE="https://github.com/tiagocoutinho/async_modbus"
SRC_URI="https://github.com/tiagocoutinho/async_modbus/archive/refs/tags/v0.2.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/async_modbus-0.2.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/connio-0.2.0[${PYTHON_USEDEP}]
	>=dev-python/umodbus-1.0.4[${PYTHON_USEDEP}]
"
