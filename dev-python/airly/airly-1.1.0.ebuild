# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python wrapper for getting air quality data from Airly sensors"
HOMEPAGE="https://github.com/ak-ambi/python-airly"
SRC_URI="https://files.pythonhosted.org/packages/ad/cb/c694d95d0784ad53d9a75c35b3515351c9662acb5284b8b28cc72681450d/airly-1.1.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.5.4[${PYTHON_USEDEP}]
"
