# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for Travis CI"
HOMEPAGE="https://github.com/menegazzo/travispy"
SRC_URI="https://files.pythonhosted.org/packages/d2/45/d1160172eff9409bb171c76cd364bb41dc22e709a49f8c75a8fef6d27d41/TravisPy-0.3.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/TravisPy-0.3.5"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
