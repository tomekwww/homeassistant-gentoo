# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="API for Minut Point"
HOMEPAGE="https://github.com/fredrike/pypoint"
SRC_URI="https://files.pythonhosted.org/packages/dd/8e/afa840212e2af2b3846c9c7d8087e3dbcec4359533a9e5e7357af3263ccf/pypoint-3.0.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pypoint-3.0.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
