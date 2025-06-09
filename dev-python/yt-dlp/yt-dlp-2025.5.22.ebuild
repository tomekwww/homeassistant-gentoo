# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A featurerich commandline audiovideo downloader"
HOMEPAGE="https://pypi.org/project/yt-dlp/"
SRC_URI="https://files.pythonhosted.org/packages/b9/7b/ea968eaf188c2c938e897274d40801de6a4a2d2679a452fdaf731d43207c/yt_dlp-2025.5.22.232956.dev0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/yt_dlp-2025.5.22.232956.dev0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/brotli[${PYTHON_USEDEP}]
	dev-python/brotlicffi[${PYTHON_USEDEP}]
	dev-python/certifi[${PYTHON_USEDEP}]
	dev-python/mutagen[${PYTHON_USEDEP}]
	dev-python/pycryptodomex[${PYTHON_USEDEP}]
	>=dev-python/requests-2.32.2[${PYTHON_USEDEP}]
	<dev-python/requests-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/urllib3-1.26.17[${PYTHON_USEDEP}]
	<dev-python/urllib3-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/websockets-13.0.0[${PYTHON_USEDEP}]
	<dev-python/websockets-14.0.0[${PYTHON_USEDEP}]
"
