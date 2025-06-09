# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{13..13} )
DISTUTILS_USE_PEP517=maturin
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Deebot client library in python 3"
HOMEPAGE="https://pypi.org/project/deebot-client/"
SRC_URI="https://files.pythonhosted.org/packages/25/db/ee7a8ff26e3396f70768f4e83157c8b02acbc035a2c6a54ab5973924da68/deebot_client-13.2.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/deebot_client-13.2.1"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.10.0[${PYTHON_USEDEP}]
	<dev-python/aiomqtt-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiomqtt-2.0.0[${PYTHON_USEDEP}]
	<dev-python/cachetools-6.0.0[${PYTHON_USEDEP}]
	>=dev-python/cachetools-5.0.0[${PYTHON_USEDEP}]
	>=dev-python/defusedxml-0.7.1[${PYTHON_USEDEP}]
"
