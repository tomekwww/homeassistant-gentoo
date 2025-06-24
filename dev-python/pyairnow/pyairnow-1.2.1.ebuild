# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A lightweight Python wrapper for EPA AirNow Air Quality API"
HOMEPAGE="https://github.com/asymworks/pyairnow"
SRC_URI="https://files.pythonhosted.org/packages/92/02/9f81110037dafaf7e3e8e421580516a49d8e7288b386deb271ec5de3d1bb/pyairnow-1.2.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyairnow-1.2.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.8.3[${PYTHON_USEDEP}]
"
