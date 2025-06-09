# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python Serial Port Extension  Asynchronous IO support"
HOMEPAGE="https://pypi.org/project/pyserial-asyncio-fast/"
SRC_URI="https://files.pythonhosted.org/packages/74/d1/6c444e0f6b886345a7993d358c6734ccc440521cdca4999601e86f111708/pyserial_asyncio_fast-0.16.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyserial_asyncio_fast-0.16"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/pyserial[${PYTHON_USEDEP}]
"
