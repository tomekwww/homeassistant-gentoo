# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Async Typed Python package for the nVent RAYCHEM SENZ RestAPI"
HOMEPAGE="https://github.com/milanmeu/aiosenz"
SRC_URI="https://files.pythonhosted.org/packages/de/4b/2616a878e3632437d836816ceb748ee936d7ef8a6238dba426d639cd1d5f/aiosenz-1.0.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiosenz-1.0.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/httpx[${PYTHON_USEDEP}]
	dev-python/authlib[${PYTHON_USEDEP}]
"
