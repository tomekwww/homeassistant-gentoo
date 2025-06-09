# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library for handling the Android IP Webcam app"
HOMEPAGE="https://github.com/home-assistant-libs/pydroid-ipcam"
SRC_URI="https://files.pythonhosted.org/packages/28/89/b5bc0394d703c1e3507efb7207d04c67ad3d89cfc701506868ee8cd13aa5/pydroid_ipcam-3.0.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pydroid_ipcam-3.0.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.6.2[${PYTHON_USEDEP}]
"
