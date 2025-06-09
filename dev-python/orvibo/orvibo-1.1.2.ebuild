# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Control Orvibo products"
HOMEPAGE="https://github.com/happyleavesaoc/python-orvibo/"
SRC_URI="https://files.pythonhosted.org/packages/06/a6/ec0d2be90fd23ab9cd9bb8832862f9528844451eda1f40eaa9f073987664/orvibo-1.1.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/orvibo-1.1.2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
