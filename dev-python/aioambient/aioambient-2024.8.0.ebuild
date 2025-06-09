# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A clean asyncfriendly library for the Ambient Weather API"
HOMEPAGE="https://github.com/bachya/aioambient"
SRC_URI="https://files.pythonhosted.org/packages/83/68/0846033ed3676295f6769e24621dba75689a9c31020b7c16fa73b0127122/aioambient-2024.8.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aioambient-2024.8.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.9.0[${PYTHON_USEDEP}]
	>=dev-python/certifi-2023.7.22[${PYTHON_USEDEP}]
	>=dev-python/python-engineio-3.13.1[${PYTHON_USEDEP}]
	<dev-python/python-engineio-5.0.0[${PYTHON_USEDEP}]
	<dev-python/python-socketio-6.0.0[${PYTHON_USEDEP}]
	>=dev-python/python-socketio-4.6.0[${PYTHON_USEDEP}]
	>=dev-python/websockets-11.0.1[${PYTHON_USEDEP}]
	<dev-python/websockets-14.0.0[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.9.2[${PYTHON_USEDEP}]
"
