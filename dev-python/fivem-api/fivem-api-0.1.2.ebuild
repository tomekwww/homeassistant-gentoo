# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A library to query info players and resources from FiveM server"
HOMEPAGE="https://github.com/Sander0542/fivem-api"
SRC_URI="https://files.pythonhosted.org/packages/8f/a5/7458fed35dcaef9d8258ff6770dbdc5eb2e6c82af21bdd5fb7331a24b8fe/fivem-api-0.1.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/fivem-api-0.1.2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.8.1[${PYTHON_USEDEP}]
"
