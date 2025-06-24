# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python Geocoding Toolbox"
HOMEPAGE="https://github.com/geopy/geopy"
SRC_URI="https://files.pythonhosted.org/packages/b5/a7/3f45be21951e48e0f367b1c87b7e00d3a9cd054bee8b6e13a35b0f652c6f/geopy-2.3.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/geopy-2.3.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/geographiclib-1.52.0[${PYTHON_USEDEP}]
	<dev-python/geographiclib-3.0.0[${PYTHON_USEDEP}]
"
