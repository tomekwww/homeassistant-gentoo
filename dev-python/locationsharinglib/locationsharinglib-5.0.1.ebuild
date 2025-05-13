# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A library to retrieve coordinates from an google account that has been shared locations of other accounts"
HOMEPAGE="https://github.com/costastf/locationsharinglib"
SRC_URI="https://files.pythonhosted.org/packages/56/c1/daf72897369928a051b37a61bd8df1e8990a36a0edd305b75344194aa144/locationsharinglib-5.0.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
