# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous Python client for Roku ECP"
HOMEPAGE="https://github.com/ctalkington/python-rokuecp"
SRC_URI="https://files.pythonhosted.org/packages/ad/6b/a152c41174baa085d3f0949c4dc3eaa6ad3c48c2f9c807fa9c2b647e663f/rokuecp-0.19.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/rokuecp-0.19.3"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/awesomeversion-21.10.1[${PYTHON_USEDEP}]
	>=dev-python/backoff-2.2.0[${PYTHON_USEDEP}]
	>=dev-python/xmltodict-0.13.0[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.6.0[${PYTHON_USEDEP}]
"
