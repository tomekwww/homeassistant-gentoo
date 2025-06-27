# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library and CLI for the Clementine Music Player remote protocol"
HOMEPAGE="http://github.com/jjmontesl/python-clementine-remote"
SRC_URI="https://files.pythonhosted.org/packages/a3/a4/9fadd261a67898edba7599f61ff5d5268912a154594352a26d9fbf2faa51/python-clementine-remote-1.0.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/python-clementine-remote-1.0.1"

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
