# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Pure python implementation of the adb client"
HOMEPAGE="https://github.com/Swind/pure-python-adb"
SRC_URI="https://files.pythonhosted.org/packages/0a/b7/1c4d6b2cbe499b4180177abcf3ae2bb2d8b36acf695ae7d8e9eb99ba00ea/pure-python-adb-0.3.0.dev0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pure-python-adb-0.3.0.dev0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
