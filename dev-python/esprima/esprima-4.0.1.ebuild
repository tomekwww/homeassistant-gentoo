# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="ECMAScript parsing infrastructure for multipurpose analysis in Python"
HOMEPAGE="https://github.com/Kronuz/esprima-python"
SRC_URI="https://files.pythonhosted.org/packages/cc/a1/50fccd68a12bcfc27adfc9969c090286670a9109a0259f3f70943390b721/esprima-4.0.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
