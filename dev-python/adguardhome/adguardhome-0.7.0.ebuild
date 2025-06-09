# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous Python client for the AdGuard Home API"
HOMEPAGE="https://github.com/frenck/python-adguardhome"
SRC_URI="https://files.pythonhosted.org/packages/74/3a/84589c7aba1d19f1ce8b5c4e21b4c117b392d6782d644ccc896139bc8c1a/adguardhome-0.7.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/adguardhome-0.7.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.6.0[${PYTHON_USEDEP}]
"
