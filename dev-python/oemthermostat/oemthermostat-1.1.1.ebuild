# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A package to interface with the HTTP API of the OpenEnergyMonitor Thermostat"
HOMEPAGE="https://github.com/Cadair/openenergymonitor_thermostat"
SRC_URI="https://files.pythonhosted.org/packages/b0/2f/d279f34e4484356e36752113a345d80238b4538229dbd32c15e99b97b146/oemthermostat-1.1.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/oemthermostat-1.1.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
"
