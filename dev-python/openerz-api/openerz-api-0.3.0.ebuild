# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python wrapper around the OpenERZ API"
HOMEPAGE="https://github.com/misialq/openerz-api"
SRC_URI="https://files.pythonhosted.org/packages/68/93/b6cc24fdc2a7b36c814e31ddcf647d8bf32b923e171ac49156c12427a624/openerz-api-0.3.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/openerz-api-0.3.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
"
