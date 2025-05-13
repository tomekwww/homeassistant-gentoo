# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Minimalistic Python client for the NextBus public API for realtime transit arrival data"
HOMEPAGE="https://github.com/vividboarder/py_nextbus"
SRC_URI="https://files.pythonhosted.org/packages/a1/04/cd0ff3c2d6c9de828c0abee3016de83498a1c0b4e7fc56745d23427eeff6/py_nextbusnext-2.1.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
"
