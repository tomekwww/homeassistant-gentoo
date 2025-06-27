# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A python library to communicate with Risco Cloud"
HOMEPAGE="https://github.com/OnFreund/PyRisco"
SRC_URI="https://files.pythonhosted.org/packages/d5/a5/8aac4be61fd3c95799786bfd637869b51240234cf0e0921f585c298d3151/pyrisco-0.6.7.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyrisco-0.6.7"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/aiohttp[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
