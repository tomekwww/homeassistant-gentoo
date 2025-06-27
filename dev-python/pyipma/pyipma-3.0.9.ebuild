# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library to retrieve information from Instituto Portugus do Mar e Atmosfera"
HOMEPAGE="https://github.com/dgomes/pyipma"
SRC_URI="https://files.pythonhosted.org/packages/43/01/dca12b07d40809d604ae36f064d14b814588534e74c515c59e63c330f3b5/pyipma-3.0.9.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyipma-3.0.9"

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
