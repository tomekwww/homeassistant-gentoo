# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A small and simple HTML table parser not requiring any external dependency"
HOMEPAGE="https://github.com/ahobsonsayers/html-table-parser-python3"
SRC_URI="https://files.pythonhosted.org/packages/d0/05/5b86d1f1c70a590e2fecd8af87c9dfd12def1bf406f243d3d3618356bfc2/html-table-parser-python3-0.1.5.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
