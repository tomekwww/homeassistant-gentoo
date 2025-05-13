# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An async Python library for interacting with Konnected home automation controllers see httpskonnectedio"
HOMEPAGE="https://github.com/konnected-io/konnected-py"
SRC_URI="https://files.pythonhosted.org/packages/36/5e/fbecfc52432d7c819fc8a4424ca32a2fe08b8e9338548705785c06efb769/konnected-1.2.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.6.1[${PYTHON_USEDEP}]
"
