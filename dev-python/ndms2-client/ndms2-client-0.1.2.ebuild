# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Keenetic NDMS 2x and 3x client"
HOMEPAGE="https://github.com/foxel/python_ndms2_client"
SRC_URI="https://files.pythonhosted.org/packages/c4/4a/6617f98a7cfacc2aeeef736678f4f595e2adbf44e9e24a8b3677b97f0d7f/ndms2_client-0.1.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/ndms2_client-0.1.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
