# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous Python client for IOmeter"
HOMEPAGE="https://iometer.de/"
SRC_URI="https://files.pythonhosted.org/packages/24/eb/0d256836a8fbc90d6cbd0a2312167be7936f4d51be3f281e4d5d3e6039e3/iometer-0.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/iometer-0.1.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.0.0[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.6.0[${PYTHON_USEDEP}]
"
