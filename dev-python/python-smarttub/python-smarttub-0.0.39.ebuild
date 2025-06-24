# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="API to query and control hot tubs using the SmartTub system"
HOMEPAGE="https://github.com/mdz/python-smarttub"
SRC_URI="https://files.pythonhosted.org/packages/0b/1d/267323ce4d205c450b1d5f8d46dbe38544f6062048ad58c1c7747dac25cc/python_smarttub-0.0.39.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/python_smarttub-0.0.39"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.7.4[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	<dev-python/inflection-1.5.0[${PYTHON_USEDEP}]
	<dev-python/pyjwt-3.4.0[${PYTHON_USEDEP}]
	<dev-python/python-dateutil-3.8.0[${PYTHON_USEDEP}]
"
