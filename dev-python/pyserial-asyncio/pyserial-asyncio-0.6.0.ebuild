# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python Serial Port Extension  Asynchronous IO support"
HOMEPAGE="https://github.com/pyserial/pyserial-asyncio"
SRC_URI="https://files.pythonhosted.org/packages/4a/9a/8477699dcbc1882ea51dcff4d3c25aa3f2063ed8f7d7a849fd8f610506b6/pyserial-asyncio-0.6.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/pyserial[${PYTHON_USEDEP}]
"
