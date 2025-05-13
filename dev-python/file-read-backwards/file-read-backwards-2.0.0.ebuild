# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Memory efficient way of reading files linebyline from the end of file"
HOMEPAGE="https://github.com/RobinNil/file_read_backwards"
SRC_URI="https://files.pythonhosted.org/packages/91/7d/70e25cf8d8d181f2bf87da51db3eeeb984e0cb24dbb31ecbf7670727c306/file_read_backwards-2.0.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
