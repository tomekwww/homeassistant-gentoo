# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Interface for dlink W215 Smart Plugs"
HOMEPAGE="https://github.com/linuxchristian/pyW215"
SRC_URI="https://files.pythonhosted.org/packages/6f/4a/c8cff44540c36235193a923b34df1d83c5be134dda9f08f3c5cce46046df/pyW215-0.7.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
