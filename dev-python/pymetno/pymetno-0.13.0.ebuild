# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A library to communicate with the metno api"
HOMEPAGE="https://github.com/Danielhiversen/pyMetno/"
SRC_URI="https://files.pythonhosted.org/packages/ca/a3/fbda50bf9d747d5697f581bdc56e70e4f0090714933445ce94d454bff038/pymetno-0.13.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pymetno-0.13.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/xmltodict[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.0.6[${PYTHON_USEDEP}]
	>=dev-python/async-timeout-3.0.0[${PYTHON_USEDEP}]
"
