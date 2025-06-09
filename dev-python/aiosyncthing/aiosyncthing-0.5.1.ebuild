# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous Python client for the Syncthing REST API"
HOMEPAGE="https://github.com/zhulik/aiosyncthing"
SRC_URI="https://files.pythonhosted.org/packages/01/45/6b433500a6fe8455a970fbcdc6712376f9a3921a6f2fd1c31e5aa7b2c611/aiosyncthing-0.5.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiosyncthing-0.5.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.7.4[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.6.3[${PYTHON_USEDEP}]
"
