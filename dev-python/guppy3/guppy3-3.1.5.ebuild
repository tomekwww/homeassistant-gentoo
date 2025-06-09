# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Guppy 3  GuppyPE ported to Python 3"
HOMEPAGE="https://github.com/zhuyifei1999/guppy3/"
SRC_URI="https://files.pythonhosted.org/packages/0f/bb/d498ab5132830ea6246ba320358048b4ff046d8f063369f121750b807a1d/guppy3-3.1.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/guppy3-3.1.5"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
