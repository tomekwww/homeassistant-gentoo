# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library to control QNAP QSW devices"
HOMEPAGE="https://pypi.org/project/aioqsw/"
SRC_URI="https://files.pythonhosted.org/packages/e3/a9/1221fa2d04f67c89f95e2a5f6e4aac9b6c3c299ca4cfc260d9c4d789ee66/aioqsw-0.4.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aioqsw-0.4.1"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
"
