# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="RitAssist API Access"
HOMEPAGE="http://github.com/depl0y/ritassist-py"
SRC_URI="https://files.pythonhosted.org/packages/df/f0/515c85a899f4d4dbc5f1970f51dd849290edb013cd4ee6628efdd45dc75b/ritassist-0.9.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/ritassist-0.9.2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
