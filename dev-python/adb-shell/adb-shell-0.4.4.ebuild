# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python implementation of ADB with shell and FileSync functionality"
HOMEPAGE="https://github.com/JeffLIrion/adb_shell"
SRC_URI="https://files.pythonhosted.org/packages/8f/73/d246034db6f3e374dad9a35ee3f61345a6b239d4febd2a41ab69df9936fe/adb_shell-0.4.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/adb_shell-0.4.4"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
