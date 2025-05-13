# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python cmus remote library"
HOMEPAGE="https://pypi.org/project/pycmus/"
SRC_URI="https://files.pythonhosted.org/packages/7c/d6/430ff02d78508d1ec187c77ab595808de24475d45da9c394dbdd275ad208/pycmus-0.1.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
