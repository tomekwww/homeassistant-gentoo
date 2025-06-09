# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library to control ThinkingCleaner devices"
HOMEPAGE="https://github.com/TheRealLink/pythinkingcleaner"
SRC_URI="https://files.pythonhosted.org/packages/08/11/b9cae2a444a5addff7d9e641b63e34d499948ab5c0e5f3089f98e39662af/pythinkingcleaner-0.0.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pythinkingcleaner-0.0.3"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
