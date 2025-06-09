# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python module to talk to Atag One"
HOMEPAGE="https://github.com/MatsNl/pyatag"
SRC_URI="https://files.pythonhosted.org/packages/d4/79/e8bc6dd783acaa881875c56a9f1aa62c9486f5741b7520b96575ef193659/pyatag-0.3.5.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyatag-0.3.5.3"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
"
