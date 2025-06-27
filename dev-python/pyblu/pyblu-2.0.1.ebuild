# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION=""
HOMEPAGE="https://github.com/LouisChrist/pyblu"
SRC_URI="https://files.pythonhosted.org/packages/49/32/69fe7684642e3238ed30b7787c074a1051d9d3cc26305b13a20ab5429d78/pyblu-2.0.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyblu-2.0.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.11.11[${PYTHON_USEDEP}]
	>=dev-python/lxml-5.0.0[${PYTHON_USEDEP}]
	<dev-python/lxml-6.0.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
