# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library to interact with the flaps  doors from Sure Petcare"
HOMEPAGE="https://github.com/benleb/surepy"
SRC_URI="https://files.pythonhosted.org/packages/8e/4a/bcd329399d7288fe2fd12dfc0c1905afcc64d80ed99419fca04f5fe0c723/surepy-0.9.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/surepy-0.9.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.7.4[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	<dev-python/async-timeout-5.0.0[${PYTHON_USEDEP}]
	>=dev-python/async-timeout-3.0.1[${PYTHON_USEDEP}]
	<dev-python/click-9.0.0[${PYTHON_USEDEP}]
	>=dev-python/click-7.1.2[${PYTHON_USEDEP}]
	<dev-python/requests-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.24.0[${PYTHON_USEDEP}]
	<dev-python/rich-11.0.0[${PYTHON_USEDEP}]
	>=dev-python/rich-10.1.0[${PYTHON_USEDEP}]
"
