# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python Wireless Library"
HOMEPAGE="http://wraith-wireless.github.io/PyRIC/"
SRC_URI="https://files.pythonhosted.org/packages/08/64/a99f27d3b4347486c7bfc0aa516016c46dc4c0f380ffccbd742a61af1eda/PyRIC-0.1.6.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/PyRIC-0.1.6.3"

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
