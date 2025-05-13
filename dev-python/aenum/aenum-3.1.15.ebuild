# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Advanced Enumerations compatible with Pythons stdlib Enum NamedTuples and NamedConstants"
HOMEPAGE="https://github.com/ethanfurman/aenum"
SRC_URI="https://files.pythonhosted.org/packages/d0/f8/33e75863394f42e429bb553e05fda7c59763f0fd6848de847a25b3fbccf6/aenum-3.1.15.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
