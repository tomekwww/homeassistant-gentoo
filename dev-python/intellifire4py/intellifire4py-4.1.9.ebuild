# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Intellifire4Py"
HOMEPAGE="https://github.com/jeeftor/intellifire4py"
SRC_URI="https://files.pythonhosted.org/packages/ad/fb/7f349f424488ad66388400415937d8cd286ef2ae56670e79d114337827c6/intellifire4py-4.1.9.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/intellifire4py-4.1.9"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aenum-3.1.11[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.9.1[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/pydantic-1.10.8[${PYTHON_USEDEP}]
	>=dev-python/rich-10.0.0[${PYTHON_USEDEP}]
"
