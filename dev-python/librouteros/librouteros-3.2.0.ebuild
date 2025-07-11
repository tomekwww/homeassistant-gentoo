# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python implementation of MikroTik RouterOS API"
HOMEPAGE="https://github.com/luqasz/librouteros"
SRC_URI="https://files.pythonhosted.org/packages/eb/fe/726f66871f7cf249bf284ace765cdc7d2ea6913678d4108d71a80a70b9e7/librouteros-3.2.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/librouteros-3.2.0"

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
