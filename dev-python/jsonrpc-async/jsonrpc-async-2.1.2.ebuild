# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A JSONRPC client library for asyncio"
HOMEPAGE="http://github.com/emlove/jsonrpc-async"
SRC_URI="https://files.pythonhosted.org/packages/84/ad/207ad0d5f497773354336dbcb490ca6433955d114cd881a3777900db1028/jsonrpc-async-2.1.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/jsonrpc-async-2.1.2"

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
