# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Automation Library for Yamaha RXV473 RXV573 RXV673 RXV773 receivers"
HOMEPAGE="https://github.com/wuub/rxv"
SRC_URI="https://files.pythonhosted.org/packages/3f/59/b064cf4b346e43861cd699b91fa771cb4e02e0503886d6b5cb300b27f20a/rxv-0.7.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/defusedxml[${PYTHON_USEDEP}]
"
