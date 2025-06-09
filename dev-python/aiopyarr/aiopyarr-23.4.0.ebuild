# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An Asynchronous Lidarr Radarr Readarr Sonarr APIs for Python"
HOMEPAGE="https://github.com/tkdrob/aiopyarr"
SRC_URI="https://files.pythonhosted.org/packages/e6/c7/35fe34baeb662e403768d9bd46e831ffe6a07f749477c438369ddf8ba306/aiopyarr-23.4.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiopyarr-23.4.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.6.1[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
"
