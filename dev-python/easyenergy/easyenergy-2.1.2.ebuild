# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous Python client providing energygas prices from easyEnergy"
HOMEPAGE="https://github.com/klaasnicolaas/python-easyenergy"
SRC_URI="https://files.pythonhosted.org/packages/b4/0b/a701838f113d4b6f69147c6b09e988a0969fafdff3f10a1331a05b26f615/easyenergy-2.1.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiodns-3.0.0[${PYTHON_USEDEP}]
	<dev-python/aiodns-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.6.0[${PYTHON_USEDEP}]
"
