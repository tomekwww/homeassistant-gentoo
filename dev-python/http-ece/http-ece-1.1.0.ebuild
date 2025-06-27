# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Encrypted Content Encoding for HTTP"
HOMEPAGE="https://github.com/martinthomson/encrypted-content-encoding"
SRC_URI="https://files.pythonhosted.org/packages/2b/1a/60ccc29fccd4789b7cada188b114185e8a5d63aba0d93262adbbe776cfe5/http_ece-1.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/http_ece-1.1.0"

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
