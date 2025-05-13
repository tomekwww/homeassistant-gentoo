# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Read and change status of verisure devices through mypages"
HOMEPAGE="http://github.com/persandstrom/python-verisure"
SRC_URI="https://files.pythonhosted.org/packages/9d/38/79ad6c6404e745f442d3eb7afaa82409647c4bd8b54d098aff77ac3aa6ec/vsure-2.6.7.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
