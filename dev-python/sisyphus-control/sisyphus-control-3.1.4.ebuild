# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Control your Sisyphus kinetic art tables sisyphusindustriescom"
HOMEPAGE="https://github.com/jkeljo/sisyphus-control"
SRC_URI="https://files.pythonhosted.org/packages/74/53/61ebc281e9e06baca81c06980253e683b8e2e387612fb25dec3e1a75df53/sisyphus_control-3.1.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/sisyphus_control-3.1.4"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.8.4[${PYTHON_USEDEP}]
	>=dev-python/netifaces-0.11.0[${PYTHON_USEDEP}]
	<dev-python/netifaces-0.12.0[${PYTHON_USEDEP}]
	<dev-python/python-engineio-v3-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/python-engineio-v3-3.14.2[${PYTHON_USEDEP}]
	>=dev-python/python-socketio-v4-4.6.1[${PYTHON_USEDEP}]
	<dev-python/python-socketio-v4-5.0.0[${PYTHON_USEDEP}]
"
