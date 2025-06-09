# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Eliq Online API Library"
HOMEPAGE="https://github.com/6d66/eliq/"
SRC_URI="https://files.pythonhosted.org/packages/5e/1c/2e3b65d2cac367d2a1ff083f8857d14876808b767dc0dcbbc8e42cb160b4/eliqonline-1.2.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/eliqonline-1.2.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
