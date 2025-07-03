# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Supplementary data about languages used by the langcodes module"
HOMEPAGE="https://pypi.org/project/language-data/"
SRC_URI="https://files.pythonhosted.org/packages/dd/ce/3f144716a9f2cbf42aa86ebc8b085a184be25c80aa453eea17c294d239c1/language_data-1.3.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/language_data-1.3.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/marisa-trie-1.1.0[${PYTHON_USEDEP}]
"

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
