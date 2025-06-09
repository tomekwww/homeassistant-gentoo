# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python 3 asynciobased library for the ReCollect Waste API"
HOMEPAGE="https://github.com/bachya/aiorecollect"
SRC_URI="https://files.pythonhosted.org/packages/43/a4/9e2115f1b328062f40171bd5f979a10449b7c286bee2e96966289c9bbef6/aiorecollect-2023.9.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/aiorecollect-2023.9.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.8.0[${PYTHON_USEDEP}]
	>=dev-python/certifi-2023.7.22[${PYTHON_USEDEP}]
"
