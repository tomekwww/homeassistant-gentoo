# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API For Flick Electric in New Zealand"
HOMEPAGE="https://pypi.org/project/PyFlick/"
SRC_URI="https://files.pythonhosted.org/packages/c4/2f/15af7421b8445ad2252ef1aa4ea9394acde47a9bfe0a8c6ff76a537685d6/pyflick-1.1.3.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.11.10[${PYTHON_USEDEP}]
	>=dev-python/json-api-doc-0.15.0[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.9.0[${PYTHON_USEDEP}]
"
