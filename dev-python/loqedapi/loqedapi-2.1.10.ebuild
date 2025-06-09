# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python package to use the Loqed Smart Door Lock APIs in a local network To be used by Home Assistant"
HOMEPAGE="https://github.com/cpolhout/loqedAPI"
SRC_URI="https://files.pythonhosted.org/packages/fc/e5/0edae81ffb68ccf3656cb65d3ef87c010667f7e5fc21d10159973ce8474a/loqedAPI-2.1.10.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/loqedAPI-2.1.10"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/async-timeout[${PYTHON_USEDEP}]
"
