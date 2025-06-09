# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Unofficial python library for StarLine API"
HOMEPAGE="https://github.com/Anonym-tsk/starline/"
SRC_URI="https://files.pythonhosted.org/packages/58/66/f30ad76fbf4d9447737348d9f1def1d9048bb714b6bf328d8f3635e2d2ae/starline-0.1.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/starline-0.1.5"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
