# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Plugwise Smile AdamAnnaP1 and Stretch module for Python 3"
HOMEPAGE="https://pypi.org/project/plugwise/"
SRC_URI="https://files.pythonhosted.org/packages/5e/b5/0a3288a9bfa466b55be501570d66f6b9a6bc2e8c0149ab7b32e297dded88/plugwise-1.7.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/plugwise-1.7.4"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/defusedxml[${PYTHON_USEDEP}]
	dev-python/munch[${PYTHON_USEDEP}]
	dev-python/python-dateutil[${PYTHON_USEDEP}]
"
