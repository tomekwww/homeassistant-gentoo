# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=hatchling
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Provides an API to the Lutron Smartbridge"
HOMEPAGE="https://pypi.org/project/pylutron-caseta/"
SRC_URI="https://files.pythonhosted.org/packages/0d/21/e0301c3f468fc6e0397ed7aeac49f6755a410fecd8d167a94ed961d3574a/pylutron_caseta-0.24.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pylutron_caseta-0.24.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/cryptography[${PYTHON_USEDEP}]
	dev-python/orjson[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
