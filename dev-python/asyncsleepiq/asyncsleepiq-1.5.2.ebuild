# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="ASync SleepIQ API"
HOMEPAGE="http://github.com/kbickar/asyncsleepiq"
SRC_URI="https://files.pythonhosted.org/packages/a7/a4/f55d0868469781317422edb77083af05783389cfbe6e5ba5b9a40d6ea368/asyncsleepiq-1.5.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
"
