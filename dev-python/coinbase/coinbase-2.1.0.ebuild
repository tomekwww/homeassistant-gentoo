# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Coinbase API client library"
HOMEPAGE="https://github.com/coinbase/coinbase-python/"
SRC_URI="https://files.pythonhosted.org/packages/5d/1f/d38b33ad501073b45a1735329c015c45d6ba8ddd16ab260d13cb7bd4b551/coinbase-2.1.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/coinbase-2.1.0"

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
