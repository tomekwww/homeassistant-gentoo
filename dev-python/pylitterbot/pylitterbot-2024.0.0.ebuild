# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python package for controlling Whisker automatic robots"
HOMEPAGE="https://github.com/natekspencer/pylitterbot"
SRC_URI="https://files.pythonhosted.org/packages/74/67/928b80c301cc51ea7d5fb198a88d500de2b858cf02baa28d24a621795fd7/pylitterbot-2024.0.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.8.1[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	<dev-python/deepdiff-9.0.0[${PYTHON_USEDEP}]
	>=dev-python/deepdiff-6.2.1[${PYTHON_USEDEP}]
	>=dev-python/pyjwt-2.7.0[${PYTHON_USEDEP}]
	<dev-python/pyjwt-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/pycognito-2024.2.0[${PYTHON_USEDEP}]
	<dev-python/pycognito-2025.0.0[${PYTHON_USEDEP}]
"
