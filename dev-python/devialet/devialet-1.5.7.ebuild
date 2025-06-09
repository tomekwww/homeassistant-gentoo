# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Devialet API"
HOMEPAGE="https://github.com/fwestenberg/devialet"
SRC_URI="https://files.pythonhosted.org/packages/10/9f/43a7645d664b95153926d5b655826a39b84d0855c4bfd4b129712d6d2cb8/devialet-1.5.7.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/devialet-1.5.7"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/async-upnp-client[${PYTHON_USEDEP}]
"
