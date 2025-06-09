# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous client for the PVOutput API"
HOMEPAGE="https://pypi.org/project/pvo/"
SRC_URI="https://files.pythonhosted.org/packages/9a/85/c87e86059a6f2402e0c4fbfe0d2a986bf362438c65a0cc40929c660c9fba/pvo-2.2.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pvo-2.2.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/mashumaro-3.10.0[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.6.0[${PYTHON_USEDEP}]
"
