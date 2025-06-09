# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous Python client for the Tractive REST API"
HOMEPAGE="https://github.com/zhulik/aiotractive"
SRC_URI="https://files.pythonhosted.org/packages/db/d2/6c4cc1247ce4e057731664019822770a3f958290631a66030dcb2fd550f7/aiotractive-0.6.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiotractive-0.6.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.8.1[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.7.2[${PYTHON_USEDEP}]
"
