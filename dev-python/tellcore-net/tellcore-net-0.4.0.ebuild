# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="a Python module that allow to run tellcore over TCPIP"
HOMEPAGE="https://github.com/pvizeli/tellcore-net"
SRC_URI="https://files.pythonhosted.org/packages/5e/55/e8140f4d4bdb633ad9e942e7379f7b6154a51c53475dd66d5a7bde97b785/tellcore-net-0.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/tellcore-net-0.4"

LICENSE="BSD"
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
