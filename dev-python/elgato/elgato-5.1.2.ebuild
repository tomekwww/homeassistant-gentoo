# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous Python client for Elgato Lights"
HOMEPAGE="https://github.com/frenck/python-elgato"
SRC_URI="https://files.pythonhosted.org/packages/fe/e3/5810851f47e1ac0560e5f855626de897ba97b36109cbaa7e4dd3561ddbd8/elgato-5.1.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/elgato-5.1.2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/mashumaro-3.10.0[${PYTHON_USEDEP}]
	>=dev-python/orjson-3.9.8[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.6.0[${PYTHON_USEDEP}]
"
