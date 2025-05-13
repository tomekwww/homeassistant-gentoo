# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python Port of John Grubers titlecasepl"
HOMEPAGE="https://github.com/ppannuto/python-titlecase"
SRC_URI="https://files.pythonhosted.org/packages/63/17/04d2d3e30e2bc5a3eefa1060b08e3fb628510440f938eaecabbe08976a26/titlecase-2.4.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
