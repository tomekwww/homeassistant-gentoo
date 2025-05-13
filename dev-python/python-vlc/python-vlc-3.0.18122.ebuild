# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="VLC bindings for python"
HOMEPAGE="http://wiki.videolan.org/PythonBinding"
SRC_URI="https://files.pythonhosted.org/packages/a1/e3/acd9a2393c57a075207a9b2946c471ac92a03c6e6cdd565f10eeeb04df0f/python-vlc-3.0.18122.tar.gz -> ${P}.gh.tar.gz"

LICENSE="LGPL-2.1+"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
