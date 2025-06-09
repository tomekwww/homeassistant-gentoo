# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Simplepush Python Library"
HOMEPAGE="https://pypi.org/project/simplepush/"
SRC_URI="https://files.pythonhosted.org/packages/5b/7c/2d14b9571b6dd630023606d1a8de51343a03e661a009b8af3c38f3de03b3/simplepush-2.2.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/simplepush-2.2.3"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/cryptography[${PYTHON_USEDEP}]
	dev-python/aiohttp[${PYTHON_USEDEP}]
"
