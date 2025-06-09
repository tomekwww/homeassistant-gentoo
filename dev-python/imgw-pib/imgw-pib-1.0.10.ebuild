# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python wrapper for IMGWPIB API"
HOMEPAGE="https://pypi.org/project/imgw-pib/"
SRC_URI="https://files.pythonhosted.org/packages/d4/ad/288c98839af1bf05a5bd2e4b0eda410e1db3050b7ab0c7d6674fec02c953/imgw_pib-1.0.10.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/imgw_pib-1.0.10"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.9.4[${PYTHON_USEDEP}]
"
