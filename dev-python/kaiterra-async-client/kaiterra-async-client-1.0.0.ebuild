# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Kaiterra API Async Client"
HOMEPAGE="https://github.com/Michsior14/python-kaiterra-async-client"
SRC_URI="https://files.pythonhosted.org/packages/dc/e1/5b0ee86f1b8d202bbbad9e2fa441d4c788d9a016063b6b4926b15db7df14/kaiterra-async-client-1.0.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/kaiterra-async-client-1.0.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.8.1[${PYTHON_USEDEP}]
"
