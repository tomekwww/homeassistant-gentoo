# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API to utilise the Slide Open Cloud and Local API"
HOMEPAGE="https://github.com/ualex73/goslide-api"
SRC_URI="https://files.pythonhosted.org/packages/77/2b/a69d1b589157c4796805bf2a3620cb9164deaa7ffb5a4c7ad9b19c46314f/goslide-api-0.7.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
"
