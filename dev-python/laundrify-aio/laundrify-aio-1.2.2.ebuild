# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python package to communicate with the laundrify API"
HOMEPAGE="https://github.com/laundrify/laundrify-pypi"
SRC_URI="https://files.pythonhosted.org/packages/85/85/652b1666284fd0fd98af73b7704afa55f2bc5d8a44616069a30f978e45b7/laundrify_aio-1.2.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/laundrify_aio-1.2.2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/pyjwt[${PYTHON_USEDEP}]
"
