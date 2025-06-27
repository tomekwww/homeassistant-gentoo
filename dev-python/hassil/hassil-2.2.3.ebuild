# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="The Home Assistant Intent Language parser"
HOMEPAGE="https://pypi.org/project/hassil/"
SRC_URI="https://files.pythonhosted.org/packages/c9/f4/bf2f642321114c4ca4586efb194274905388a09b1c95e52529eba2fd4d51/hassil-2.2.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/hassil-2.2.3"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/pyyaml-6.0.0[${PYTHON_USEDEP}]
	<dev-python/pyyaml-7.0.0[${PYTHON_USEDEP}]
	<dev-python/unicode-rbnf-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/unicode-rbnf-2.2.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
