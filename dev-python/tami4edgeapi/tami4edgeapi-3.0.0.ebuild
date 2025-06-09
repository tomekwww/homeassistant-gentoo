# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION=""
HOMEPAGE="https://github.com/Guy293/Tami4EdgeAPI"
SRC_URI="https://files.pythonhosted.org/packages/a3/bc/a0f9323d4a102b8867ebc0e0cd27e191d63651c343f800e7c208465bad02/tami4edgeapi-3.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/tami4edgeapi-3.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/pypasser[${PYTHON_USEDEP}]
	dev-python/pyjwt[${PYTHON_USEDEP}]
"
