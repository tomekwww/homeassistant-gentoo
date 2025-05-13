# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library to interface with V2C EVSE Trydan"
HOMEPAGE="https://github.com/dgomes/pytrydan"
SRC_URI="https://files.pythonhosted.org/packages/80/7c/c3d3275a0acf892ecd24398f3f93e8b7444c361d85edb7c401e4b40f293b/pytrydan-0.8.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/httpx-0.24.0[${PYTHON_USEDEP}]
	>=dev-python/orjson-3.9.2[${PYTHON_USEDEP}]
	>=dev-python/rich-10.0.0[${PYTHON_USEDEP}]
	<dev-python/rich-11.0.0[${PYTHON_USEDEP}]
	<dev-python/tenacity-9.0.0[${PYTHON_USEDEP}]
	>=dev-python/tenacity-8.2.2[${PYTHON_USEDEP}]
	>=dev-python/typer-0.7.0[${PYTHON_USEDEP}]
	<dev-python/typer-0.13.0[${PYTHON_USEDEP}]
"
