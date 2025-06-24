# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A library implementing API control of the SMLIGHT SLZB06 LAN Coordinators"
HOMEPAGE="https://pypi.org/project/pysmlight/"
SRC_URI="https://files.pythonhosted.org/packages/d9/ee/e2f58d33f1f075aa23425ebefbc7a9dbd129814468cc355912bf09f708c9/pysmlight-0.2.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pysmlight-0.2.5"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.9.3[${PYTHON_USEDEP}]
	<dev-python/aiohttp-sse-client2-0.4.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-sse-client2-0.3.0[${PYTHON_USEDEP}]
	<dev-python/awesomeversion-25.0.0[${PYTHON_USEDEP}]
	>=dev-python/awesomeversion-24.6.0[${PYTHON_USEDEP}]
	>=dev-python/mashumaro-3.10.0[${PYTHON_USEDEP}]
"
