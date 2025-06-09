# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A simple Python module to retrieve battery information"
HOMEPAGE="https://github.com/nicolargo/batinfo"
SRC_URI="https://files.pythonhosted.org/packages/a3/51/a0a9ad2d19bb498f2779754209ca80b7ea53f948995367a2bf408b2bef7c/batinfo-0.4.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/batinfo-0.4.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
