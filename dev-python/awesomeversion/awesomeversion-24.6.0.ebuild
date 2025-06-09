# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="One version package to rule them all One version package to find them One version package to bring them all and in the darkness bind them"
HOMEPAGE="https://github.com/ludeeus/awesomeversion"
SRC_URI="https://files.pythonhosted.org/packages/9d/e9/1baaf8619a3d66b467ba105976897e67b36dbad93b619753768357dbd475/awesomeversion-24.6.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/awesomeversion-24.6.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
