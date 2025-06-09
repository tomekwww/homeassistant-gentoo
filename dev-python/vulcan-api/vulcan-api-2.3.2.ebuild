# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Nieoficjalne API do dzienniczka elektronicznego UONET"
HOMEPAGE="https://github.com/kapi2289/vulcan-api"
SRC_URI="https://files.pythonhosted.org/packages/23/d7/7f11fd4b727cf25dff4f0a88f3dd2831d608bba28bb3d2c547560b09b0e8/vulcan-api-2.3.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/vulcan-api-2.3.2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/pyopenssl[${PYTHON_USEDEP}]
	dev-python/uonet-request-signer-hebe[${PYTHON_USEDEP}]
	dev-python/pytz[${PYTHON_USEDEP}]
	dev-python/aenum[${PYTHON_USEDEP}]
	dev-python/related-without-future[${PYTHON_USEDEP}]
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/faust-cchardet[${PYTHON_USEDEP}]
	dev-python/aiodns[${PYTHON_USEDEP}]
	dev-python/yarl[${PYTHON_USEDEP}]
"
