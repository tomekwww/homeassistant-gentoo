# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Unofficial Renson endura delta Python library"
HOMEPAGE="https://github.com/jimmyd-be/Renson-endura-delta-library"
SRC_URI="https://files.pythonhosted.org/packages/1d/7b/875c8843ef8579dcb1299d8355b7199815bf69a80fe360563c2097215d0a/renson_endura_delta-1.7.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-2.26.0[${PYTHON_USEDEP}]
"
