# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library implementing websocket connection to ZWaveMe"
HOMEPAGE="https://github.com/Z-Wave-Me/zwave-me-ws"
SRC_URI="https://files.pythonhosted.org/packages/6c/da/bc194ffa707abc970d085dde29b50b6b3657f033adcc949687c1042e89d4/zwave_me_ws-0.4.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/zwave_me_ws-0.4.3"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/websocket-client-1.2.1[${PYTHON_USEDEP}]
	<dev-python/websocket-client-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.28.1[${PYTHON_USEDEP}]
	<dev-python/requests-3.0.0[${PYTHON_USEDEP}]
"
