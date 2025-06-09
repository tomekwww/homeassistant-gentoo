# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python wrapper around the Meteoclimatic service"
HOMEPAGE="https://github.com/adrianmo/pymeteoclimatic"
SRC_URI="https://files.pythonhosted.org/packages/ce/75/fb57cb65cde92a814a3c5cc3378c9e5072a0d6a217f52000381997266342/pymeteoclimatic-0.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pymeteoclimatic-0.1.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/lxml-4.5.0[${PYTHON_USEDEP}]
	>=dev-python/beautifulsoup4-4.9.0[${PYTHON_USEDEP}]
"
