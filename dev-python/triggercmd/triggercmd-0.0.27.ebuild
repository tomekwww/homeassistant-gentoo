# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python agent for TRIGGERcmd cloud service"
HOMEPAGE="https://pypi.org/project/triggercmd/"
SRC_URI="https://files.pythonhosted.org/packages/ae/ef/e7f2de1d4e79099e08c300270b7a58c11a76aaaf8621835809d549050549/triggercmd-0.0.27.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/triggercmd-0.0.27"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/websocket-client[${PYTHON_USEDEP}]
	dev-python/pyjwt[${PYTHON_USEDEP}]
"
