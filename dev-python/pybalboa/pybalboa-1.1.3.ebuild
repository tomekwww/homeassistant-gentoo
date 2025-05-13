# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Module to communicate with a Balboa spa wifi adapter"
HOMEPAGE="https://github.com/garbled1/pybalboa"
SRC_URI="https://files.pythonhosted.org/packages/3c/ca/78333e5e5c27f6d2381b4c4b9107d451f3a7700853769fc5d629a084d5fa/pybalboa-1.1.3.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
