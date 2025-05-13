# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for controlling Anthem Receivers"
HOMEPAGE="https://github.com/nugget/python-anthemav"
SRC_URI="https://files.pythonhosted.org/packages/ad/46/1a5c924ab9a0fd4fa493d619e8aa3c4d4fa3c4477ff6d7135806fd712da8/anthemav-1.4.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
