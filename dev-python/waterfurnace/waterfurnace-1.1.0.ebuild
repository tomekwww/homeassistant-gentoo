# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python interface for waterfurnace geothermal systems"
HOMEPAGE="https://github.com/sdague/waterfurnace"
SRC_URI="https://files.pythonhosted.org/packages/c2/4c/2e6e4c964140a26fa48c9c8b20b6570c40b02df142f2e7ba3cd92236cbeb/waterfurnace-1.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/waterfurnace-1.1.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/click-6.0.0[${PYTHON_USEDEP}]
	<dev-python/click-8.2.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.18.0[${PYTHON_USEDEP}]
	>=dev-python/websocket-client-0.47.0[${PYTHON_USEDEP}]
"
