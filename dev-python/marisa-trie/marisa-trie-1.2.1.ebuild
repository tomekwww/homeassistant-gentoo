# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Static memoryefficient and fast Trielike structures for Python"
HOMEPAGE="https://github.com/pytries/marisa-trie"
SRC_URI="https://files.pythonhosted.org/packages/31/15/9d9743897e4450b2de199ee673b50cb018980c4ced477d41cf91304a85e3/marisa_trie-1.2.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/marisa_trie-1.2.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/setuptools[${PYTHON_USEDEP}]
"

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
