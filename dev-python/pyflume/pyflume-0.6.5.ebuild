# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Package to integrate with Flume Sensor"
HOMEPAGE="https://github.com/ChrisMandich/PyFlume"
SRC_URI="https://files.pythonhosted.org/packages/86/d5/c71684f08d1e60f9347d558acfd991bde1609f92b499588f382e3170bde7/PyFlume-0.6.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/PyFlume-0.6.5"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/pyjwt[${PYTHON_USEDEP}]
	dev-python/ratelimit[${PYTHON_USEDEP}]
	dev-python/pytz[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
"
