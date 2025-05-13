# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="PurePython implementation of the blurhash algorithm"
HOMEPAGE="https://github.com/halcy/blurhash-python"
SRC_URI="https://files.pythonhosted.org/packages/02/96/363eae896ec6a699dfc63f19f9b857c09294fe4d791198f002baa495fc4e/blurhash-1.1.4.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
