# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library for WMS WebControl pro API"
HOMEPAGE="https://pypi.org/project/pywmspro/"
SRC_URI="https://files.pythonhosted.org/packages/fd/3f/c008eaa03f187cefca2c75014bcc7c9122bbc282309d811d790de5711e3e/pywmspro-0.2.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.11.18[${PYTHON_USEDEP}]
"
