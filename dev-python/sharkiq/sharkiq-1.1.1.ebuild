# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for Shark IQ robots"
HOMEPAGE="https://github.com/JeffResc/sharkiq-ng"
SRC_URI="https://files.pythonhosted.org/packages/83/86/de935b5e3aaca28f7ea6f09fdd814f914b244d6a27ce1f5573bba5d5c579/sharkiq-1.1.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/sharkiq-1.1.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.8.1[${PYTHON_USEDEP}]
	>=dev-python/requests-2.27.1[${PYTHON_USEDEP}]
"

src_prepare() {
    touch requirements.txt
    distutils-r1_src_prepare
}


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
