# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python wrapper for Telldus home automation library"
HOMEPAGE="https://github.com/erijo/tellcore-py"
SRC_URI="https://files.pythonhosted.org/packages/f4/e1/d3b72948f6b5a3b6394c4e42e07709dda90ab71314c18f73e7b45cd9aeaa/tellcore-py-1.1.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
