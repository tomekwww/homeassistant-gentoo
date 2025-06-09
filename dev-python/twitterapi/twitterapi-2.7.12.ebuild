# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Minimal wrapper for Twitters REST and Streaming APIs"
HOMEPAGE="https://github.com/geduldig/TwitterAPI"
SRC_URI="https://files.pythonhosted.org/packages/18/5f/6b514e280a39298cd48c950e7b9796d76bcc3c1d3bb2fbbcc8e3a1c12c82/TwitterAPI-2.7.12.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/TwitterAPI-2.7.12"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
