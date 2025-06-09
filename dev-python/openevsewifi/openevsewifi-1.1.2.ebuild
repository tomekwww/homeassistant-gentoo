# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python library for communicating with the ESP8266based wifi module from OpenEVSE"
HOMEPAGE="https://github.com/miniconfig/python-openevse-wifi"
SRC_URI="https://files.pythonhosted.org/packages/89/cc/e3f16c8967b884a4cf4dae2ffaf372f8bc4f2f7ff2a0e35d9eebce1cfea2/openevsewifi-1.1.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/openevsewifi-1.1.2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.23.0[${PYTHON_USEDEP}]
	<dev-python/requests-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/deprecated-1.2.10[${PYTHON_USEDEP}]
	<dev-python/deprecated-2.0.0[${PYTHON_USEDEP}]
"
