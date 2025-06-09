# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="asyncio Python library for connecting to and controlling the Logitech Harmony"
HOMEPAGE="https://pypi.org/project/aioharmony/"
SRC_URI="https://files.pythonhosted.org/packages/cb/6e/99b2ea0ce45a2979386dfa8ebd7da0e6e7282e2ac1aee06fec7be8bbfd93/aioharmony-0.5.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aioharmony-0.5.2"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.11.0[${PYTHON_USEDEP}]
	>=dev-python/async-timeout-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/slixmpp-1.8.0[${PYTHON_USEDEP}]
"
