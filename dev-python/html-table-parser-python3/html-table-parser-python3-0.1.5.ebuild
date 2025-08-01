# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A small and simple HTML table parser not requiring any external dependency"
HOMEPAGE="https://github.com/ahobsonsayers/html-table-parser-python3"
SRC_URI="https://files.pythonhosted.org/packages/d0/05/5b86d1f1c70a590e2fecd8af87c9dfd12def1bf406f243d3d3618356bfc2/html-table-parser-python3-0.1.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/html-table-parser-python3-0.1.5"

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
