# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python client for controlling the Geocaching API"
HOMEPAGE="https://github.com/Sholofly/geocachingapi-python"
SRC_URI="https://files.pythonhosted.org/packages/ff/04/d547a5105c353159b4c2a925428cd517e06f3703165eaaad84482e536a49/geocachingapi-0.3.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.7.4[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/backoff-1.9.0[${PYTHON_USEDEP}]
	dev-python/yarl[${PYTHON_USEDEP}]
	~dev-python/reverse-geocode-1.6.5[${PYTHON_USEDEP}]
"
