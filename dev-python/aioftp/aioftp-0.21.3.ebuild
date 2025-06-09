# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="ftp clientserver for asyncio"
HOMEPAGE="https://github.com/aio-libs/aioftp"
SRC_URI="https://files.pythonhosted.org/packages/a2/17/418774e0d56619abcf74ed1a2c4e09eabe03c63a5b64e77b28b4d8c01aa5/aioftp-0.21.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aioftp-0.21.3"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
