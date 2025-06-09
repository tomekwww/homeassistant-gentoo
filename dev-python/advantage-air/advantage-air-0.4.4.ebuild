# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="API helper for Advantage Airs MyAir and ezone API"
HOMEPAGE="https://github.com/Bre77/advantage_air"
SRC_URI="https://files.pythonhosted.org/packages/eb/5d/4d51418e4b50deb663dae00cf2efaccb78d54720d5218b950a237057c8cf/advantage_air-0.4.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/advantage_air-0.4.4"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
"
