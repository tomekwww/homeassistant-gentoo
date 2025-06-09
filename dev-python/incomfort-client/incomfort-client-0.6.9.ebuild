# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An aiohttpbased client for Intergas InComfortInTouch Lan2RF systems"
HOMEPAGE="https://pypi.org/project/incomfort-client/"
SRC_URI="https://files.pythonhosted.org/packages/07/57/3886e1515e91c00e22916e844b43e5c0ab3fd7c129fdae379be2a4714c93/incomfort_client-0.6.9.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/incomfort_client-0.6.9"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.8.1[${PYTHON_USEDEP}]
"
