# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION=""
HOMEPAGE="https://pypi.org/project/simplefin4py/"
SRC_URI="https://files.pythonhosted.org/packages/e2/65/fad11bba41909863b1b812286de243bce6433c0b782342ddb2b3cb54e684/simplefin4py-0.0.18.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/simplefin4py-0.0.18"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.9.1[${PYTHON_USEDEP}]
	<dev-python/dataclasses-json-0.7.0[${PYTHON_USEDEP}]
	>=dev-python/dataclasses-json-0.6.3[${PYTHON_USEDEP}]
"
