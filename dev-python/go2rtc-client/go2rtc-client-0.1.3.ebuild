# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python client for go2rtc"
HOMEPAGE="https://pypi.org/project/go2rtc-client/"
SRC_URI="https://files.pythonhosted.org/packages/96/a1/4f726f1c150f1f4657946da92a868b7b5d3ebf95ebad09a035e7151ce2f5/go2rtc_client-0.1.3b0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/go2rtc_client-0.1.3b0"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.10.0[${PYTHON_USEDEP}]
	<dev-python/awesomeversion-25.6.0[${PYTHON_USEDEP}]
	<dev-python/mashumaro-4.13.0[${PYTHON_USEDEP}]
	<dev-python/orjson-4.10.0[${PYTHON_USEDEP}]
	<dev-python/webrtc-models-1.1.0[${PYTHON_USEDEP}]
"
