# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="An Dict like LRU container"
HOMEPAGE="https://pypi.org/project/lru-dict/"
SRC_URI="https://files.pythonhosted.org/packages/96/e3/42c87871920602a3c8300915bd0292f76eccc66c38f782397acbf8a62088/lru-dict-1.3.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/lru-dict-1.3.0"

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
