# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python client for HLKSW16"
HOMEPAGE="https://github.com/jameshilliard/hlk-sw16"
SRC_URI="https://files.pythonhosted.org/packages/9f/bd/5023238dad976d21864c6c642806d47847748b0bd3499ec3f947ac8a2ba0/hlk-sw16-0.0.9.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
