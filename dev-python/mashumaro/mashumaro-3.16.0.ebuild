# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Fast and well tested serialization library"
HOMEPAGE="https://github.com/Fatal1ty/mashumaro"
SRC_URI="https://files.pythonhosted.org/packages/d7/92/4c1ac8d819fba3d6988876cadd922803818905a50d22d2027581366e8142/mashumaro-3.16.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/mashumaro-3.16"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/typing-extensions-4.1.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
