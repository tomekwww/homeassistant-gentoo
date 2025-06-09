# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A simple library to interface with iAlarm systems built for use with HomeAssistant"
HOMEPAGE="https://github.com/RyuzakiKK/pyialarm"
SRC_URI="https://files.pythonhosted.org/packages/b3/bd/dcfbbde1105d0e318294545c3051c9d005b82baff7629c2681294f66e4d9/pyialarm-2.2.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyialarm-2.2.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/dicttoxml2[${PYTHON_USEDEP}]
	dev-python/xmltodict[${PYTHON_USEDEP}]
"
