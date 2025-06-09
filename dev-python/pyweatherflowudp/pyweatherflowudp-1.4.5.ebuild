# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An eventbased asynchronous library to read UDP packets from Weatherflow weather systems on a local network without any reliance on the cloud"
HOMEPAGE="https://github.com/briis/pyweatherflowudp"
SRC_URI="https://files.pythonhosted.org/packages/df/ec/554b6b1a08f9d2c1ec372a111b752db224b2ef795a900f11dbea775177aa/pyweatherflowudp-1.4.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyweatherflowudp-1.4.5"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/pint-0.19.0[${PYTHON_USEDEP}]
	>=dev-python/psychrolib-2.5.0[${PYTHON_USEDEP}]
	<dev-python/psychrolib-3.0.0[${PYTHON_USEDEP}]
"
