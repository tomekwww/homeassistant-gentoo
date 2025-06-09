# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python module to talk to Evil Genius Labs devices"
HOMEPAGE="https://github.com/home-assistant-libs/pyevilgenius"
SRC_URI="https://files.pythonhosted.org/packages/70/52/be37508c166b91447c0c30e855a3d790dc01eef27e10435bdb0e8f52c761/pyevilgenius-2.0.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyevilgenius-2.0.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/async-timeout[${PYTHON_USEDEP}]
"
