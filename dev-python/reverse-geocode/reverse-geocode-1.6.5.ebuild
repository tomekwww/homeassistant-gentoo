# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Reverse geocode the given latitude  longitude"
HOMEPAGE="https://github.com/richardpenman/reverse_geocode/"
SRC_URI="https://files.pythonhosted.org/packages/8b/7c/552b672bee743ff06f5165e67aa1bbbeea97a11d8242da8ff934ac74743d/reverse_geocode-1.6.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/reverse_geocode-1.6.5"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/numpy[${PYTHON_USEDEP}]
	dev-python/scipy[${PYTHON_USEDEP}]
"
