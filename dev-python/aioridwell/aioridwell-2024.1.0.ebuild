# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python3 asynciobased API for interacting with Ridwell waste recycling"
HOMEPAGE="https://github.com/bachya/aioridwell"
SRC_URI="https://files.pythonhosted.org/packages/6f/85/bdc831718d4d8022b0728ad5d44014a41d6004495d9b3eb9ac295cc45775/aioridwell-2024.1.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/pyjwt-2.4.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.9.0[${PYTHON_USEDEP}]
	>=dev-python/certifi-2023.7.22[${PYTHON_USEDEP}]
	<dev-python/titlecase-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/titlecase-2.3.0[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.9.2[${PYTHON_USEDEP}]
"
