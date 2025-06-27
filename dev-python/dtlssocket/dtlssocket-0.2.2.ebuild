# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="DTLSSocket is a cython wrapper for tinydtls with a Socket like interface"
HOMEPAGE="https://git.fslab.de/jkonra2m/tinydtls-cython"
SRC_URI="https://files.pythonhosted.org/packages/97/b6/702c4197c37c7036d0b7d67a2963c83a4b7098525959566dc6e2284c9f89/dtlssocket-0.2.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/dtlssocket-0.2.2"

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
