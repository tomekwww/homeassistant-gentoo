# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Module for interacting with Wallbox EV charger api"
HOMEPAGE="https://github.com/cliviu74/wallbox"
SRC_URI="https://files.pythonhosted.org/packages/ff/51/6ea41031af8ca633a5478275f588398e7c71fb7e111b8af698855012cda1/wallbox-0.9.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.22.0[${PYTHON_USEDEP}]
	>=dev-python/aenum-3.1.8[${PYTHON_USEDEP}]
"
