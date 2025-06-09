# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python client library for Google Drive API"
HOMEPAGE="https://pypi.org/project/python-google-drive-api/"
SRC_URI="https://files.pythonhosted.org/packages/63/27/c46ef31ec13e425246dcc489a0d3c5242245f284b094f5e549e51986e4b2/python_google_drive_api-0.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/python_google_drive_api-0.1.0"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.8.0[${PYTHON_USEDEP}]
	>=dev-python/mashumaro-3.12.0[${PYTHON_USEDEP}]
"
