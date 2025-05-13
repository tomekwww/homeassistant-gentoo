# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="SSE plugin for Starlette"
HOMEPAGE="https://pypi.org/project/sse-starlette/"
SRC_URI="https://files.pythonhosted.org/packages/8c/f4/989bc70cb8091eda43a9034ef969b25145291f3601703b82766e5172dfed/sse_starlette-2.3.6.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/anyio-4.7.0[${PYTHON_USEDEP}]
"
