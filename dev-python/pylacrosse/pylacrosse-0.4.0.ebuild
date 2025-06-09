# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="LaCrosse sensor library"
HOMEPAGE="http://github.com/hthiery/python-lacrosse"
SRC_URI="https://files.pythonhosted.org/packages/44/e2/0371d5d1a6e0bf32c83b6df8ca08793b9ad22a28199e23c3e33f995fc5a9/pylacrosse-0.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pylacrosse-0.4"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
