# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Get the latest Home Assistant version from various sources"
HOMEPAGE="https://github.com/ludeeus/pyhaversion"
SRC_URI="https://files.pythonhosted.org/packages/c7/9a/e640c3c697ff6f9560da145144aa664cb9cc6efb8b71c17b03e3affba410/pyhaversion-22.8.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.6.1[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/awesomeversion-21.8.1[${PYTHON_USEDEP}]
"
