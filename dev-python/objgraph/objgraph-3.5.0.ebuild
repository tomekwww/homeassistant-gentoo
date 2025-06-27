# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Draws Python object reference graphs with graphviz"
HOMEPAGE="https://mg.pov.lt/objgraph/"
SRC_URI="https://files.pythonhosted.org/packages/08/f9/05c2b413d39e86772a4dda63f78232a3fc62f2545cf5f3e23acc6cabaef7/objgraph-3.5.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/objgraph-3.5.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/graphviz[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
