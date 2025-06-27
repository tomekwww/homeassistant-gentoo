# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Versasense API consumer"
HOMEPAGE="https://github.com/flamm3blemuff1n/pyversasense"
SRC_URI="https://files.pythonhosted.org/packages/cd/e2/70ef5e7ee6d3218ed73846b372b89e99adee7b9d1d4f4eb89736bdbcded3/pyversasense-0.0.6.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyversasense-0.0.6"

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
