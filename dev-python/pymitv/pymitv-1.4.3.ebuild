# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python 3 based Xiaomi TV remote"
HOMEPAGE="https://github.com/simse/pymitv"
SRC_URI="https://files.pythonhosted.org/packages/e2/d1/18854d7887322ef6fee142d8a2131d16b169ceb2a2c1b441d27dfa9c0be3/pymitv-1.4.3.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
"
