# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="LCNPCK library"
HOMEPAGE="https://github.com/alengwenus/pypck"
SRC_URI="https://files.pythonhosted.org/packages/c7/eb/914c1b73f920f6229eadc5c59f74c4465b6bffb4c81bc15a65c58021dbbb/pypck-0.8.6.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
