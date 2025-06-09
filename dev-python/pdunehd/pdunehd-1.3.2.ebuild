# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python wrapper for Dune HD media player API"
HOMEPAGE="https://github.com/valentinalexeev/pdunehd"
SRC_URI="https://files.pythonhosted.org/packages/bc/6f/7b94176ba29bb6cc6d3bcfce514d9ec7499ccadcddfe8cbbee834a5b1458/pdunehd-1.3.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pdunehd-1.3.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
