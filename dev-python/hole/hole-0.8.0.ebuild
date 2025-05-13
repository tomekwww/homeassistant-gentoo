# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for interacting with hole"
HOMEPAGE="https://github.com/home-assistant-ecosystem/python-hole"
SRC_URI="https://files.pythonhosted.org/packages/45/8b/6ae8e2083eb52baa81b1c11daa5ca2652f7d0e7942edae488ab9c1e0c170/hole-0.8.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
