# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Unofficial API for Whirlpools 6th Sense appliances"
HOMEPAGE="https://pypi.org/project/whirlpool-sixth-sense/"
SRC_URI="https://files.pythonhosted.org/packages/cd/40/80c9fd97efcc83cf12dac19236f8ea1ba019e041c94a337e010b2a94fe19/whirlpool_sixth_sense-0.20.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/whirlpool_sixth_sense-0.20.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aioconsole-0.3.1[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.9.1[${PYTHON_USEDEP}]
	>=dev-python/websockets-8.1.0[${PYTHON_USEDEP}]
	>=dev-python/async-timeout-4.0.3[${PYTHON_USEDEP}]
"
