# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Interface to eSterownikpl eCoal water boiler controller"
HOMEPAGE="https://github.com/matkor/ecoaliface"
SRC_URI="https://files.pythonhosted.org/packages/11/c4/eecb05015ce672f35719ad4d1e759a2cf3c6d686c8c446976d841e6bd0f2/ecoaliface-0.4.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
