# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Async client for Yandex Maps"
HOMEPAGE="https://github.com/devbis/aioymaps/"
SRC_URI="https://files.pythonhosted.org/packages/7e/0b/328a4beac74d40e7e128731d271d02aca65441c73f647190c26fbc2a792c/aioymaps-1.2.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aioymaps-1.2.5"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.0.0[${PYTHON_USEDEP}]
"
