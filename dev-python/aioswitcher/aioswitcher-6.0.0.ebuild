# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Switcher Python Integration"
HOMEPAGE="https://pypi.org/project/aioswitcher/"
SRC_URI="https://files.pythonhosted.org/packages/cf/24/e0692c75c7f261348918f35716fbb750290ff0cdf7a23097ee382ef4aabf/aioswitcher-6.0.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/pycryptodome-3.18.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.10.3[${PYTHON_USEDEP}]
"
