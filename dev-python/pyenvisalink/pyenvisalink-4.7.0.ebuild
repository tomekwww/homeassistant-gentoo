# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python3 library for running asynchronus communications with envisalink alarm control panel modules"
HOMEPAGE="https://github.com/ufodone/pyenvisalink"
SRC_URI="https://files.pythonhosted.org/packages/51/b5/4ab1338e19694f9448ead7aa889c048c34a9f405f98c62be7b3d59c003d9/pyenvisalink-4.7.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
